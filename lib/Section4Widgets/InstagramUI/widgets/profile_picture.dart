import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 233, 2, 2),
                    Color.fromARGB(255, 255, 239, 11)
                  ]),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 112,
            height: 112,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/cat.jpg'), fit: BoxFit.cover),
              border: Border.all(color: Colors.white, width: 4),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}
