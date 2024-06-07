import 'package:flutter/material.dart';

class Soal2 extends StatelessWidget {
  const Soal2({
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
      body: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
