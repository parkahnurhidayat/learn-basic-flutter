import 'dart:math';

import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(),
        ),
        title: const Text("Text Judul"),
        actions: const [Icon(Icons.more_vert_rounded)],
      ),
      body: Center(
          child: Transform.rotate(
        angle: pi / (180 / 90),
        child: const FlutterLogo(size: 200),
      )),
    );
  }
}
