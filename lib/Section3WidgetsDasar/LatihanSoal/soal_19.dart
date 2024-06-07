import 'package:flutter/material.dart';

class Soal19 extends StatelessWidget {
  const Soal19({
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
        body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://picsum.photos/id/${250 + index}/300/300'),
                  ),
                ),
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Hello $index",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
