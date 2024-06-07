import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({
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
      body: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                child: const Center(child: Text("Hello")),
              );
            }
            return Container(
              color: Colors.amber,
              width: 150,
              height: 150,
              child: const Center(child: Text("Hello")),
            );
          }),
    );
  }
}
