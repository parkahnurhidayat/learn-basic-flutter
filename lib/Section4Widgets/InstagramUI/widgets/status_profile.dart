import 'package:flutter/material.dart';

class StatusProfile extends StatelessWidget {
  const StatusProfile({
    super.key,
    required this.String,
  });

  final String;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/seed/200/300'),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              String,
              style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
