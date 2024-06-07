import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({
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
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index % 2 == 0) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 100,
                        color: Colors.blue,
                      );
                    }
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 100,
                      color: Colors.amber,
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.blue,
                            height: 150,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Hello ${index + 1}",
                            style: const TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.amber,
                          height: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hello ${index + 1}",
                          style: const TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
