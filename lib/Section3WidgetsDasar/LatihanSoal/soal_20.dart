import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({
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
        body: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
          ],
        ));
  }
}
