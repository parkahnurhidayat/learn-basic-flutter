import 'package:flutter/material.dart';

class StatsProfile extends StatelessWidget {
  const StatsProfile({
    super.key,
    required this.number,
    required this.title,
  });

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
