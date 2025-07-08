import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // display name
  late String time;
  String flag; // not used in API, for UI
  String url; // this will be the timezone string like "Europe/Berlin"
  late bool isDaytime;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      var response = await http.get(
        Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url'),
      );

      if (response.statusCode != 200) {
        throw Exception("Failed to load time");
      }

      Map data = jsonDecode(response.body);

      String dateTimeString = data['dateTime']; // e.g., "2024-07-08T09:12:03.5646282"
      DateTime now = DateTime.parse(dateTimeString);

      isDaytime = now.hour > 6 && now.hour < 20;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Error: $e');
      time = 'could not get time';
      isDaytime = true; // fallback to avoid crash
    }
  }
}
