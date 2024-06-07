
import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({
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
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
