import 'package:http/http.dart' as http;  // Alias the 'http' package
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  late String time; // the time in that location, 'late' to defer initialization
  String flag; // url to an asset flag icon
  String url; // location url for API endpoint
  late bool isDaytime; // true or false if daytime or not, 'late' for initialization

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      // Make the request (using the http package correctly)
      var response = await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);

      // Get properties from JSON
      String datetime = data['datetime'] ?? 'default value'; // Fallback if missing
      String offset = data['utc_offset']?.substring(1, 3) ?? '0'; // Default to '0' if null

      // Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set the time property
      isDaytime = now.hour > 6 && now.hour < 20; // No need for ternary operator
      time = DateFormat.jm().format(now);
    } catch (e) {
      print(e);
      time = 'could not get time';
    }
  }
}
