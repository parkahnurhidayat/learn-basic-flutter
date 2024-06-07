import 'package:basic_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PengunaanGetx extends StatelessWidget {
  PengunaanGetx({super.key});

  final data = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print("Dirender Ulang");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Pengunaan GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              print('Render Text');
              return Text(
                '${data.num.value}',
                style: const TextStyle(fontSize: 35),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    data.decrement();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    data.increment();
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
