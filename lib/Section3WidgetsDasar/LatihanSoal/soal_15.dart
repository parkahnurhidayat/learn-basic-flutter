import 'package:flutter/material.dart';

class Soal15 extends StatelessWidget {
  const Soal15({
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: const Center(child: Text("Hello World")),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("Hello World")),
                )
              ],
            ),
            const FlutterLogo(
              size: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("Hello World")),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: const Center(child: Text("Hello World")),
                )
              ],
            ),
          ],
        ));
  }
}
