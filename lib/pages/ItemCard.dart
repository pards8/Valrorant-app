import 'package:flutter/material.dart';
import 'Agent.dart';

class Itemcard extends StatelessWidget {
  final Agent agent;
  const Itemcard({
    super.key,
    required this.agent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      // fixed width only
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min, // <<< important!
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                agent.name,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                'Role: ${agent.role}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                'KDA: ${agent.kda}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
