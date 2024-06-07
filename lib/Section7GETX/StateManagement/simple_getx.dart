import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleGetx extends StatelessWidget {
  SimpleGetx({super.key});

  final simpleC = Get.put(SimpleGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Getx'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GetBuilder<SimpleGetxController>(
            builder: (controller) => Text(
              '${controller.num}',
              style: const TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                simpleC.increment();
              },
              child: const Text('Tambah Data')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                simpleC.ubahTampilan();
              },
              child: const Text('Refresh Data')),
        ]),
      ),
    );
  }
}

class SimpleGetxController extends GetxController {
  int num = 0;

  void increment() {
    num = num + 1;
  }

  @override
  void ubahTampilan() {
    update();
  }
}
