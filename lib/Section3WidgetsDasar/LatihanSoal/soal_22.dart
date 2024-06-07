import 'package:flutter/material.dart';

class Soal22 extends StatelessWidget {
  const Soal22({
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
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 8),
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://picsum.photos/200/300')),
        ),
      )),
    );
  }
}
