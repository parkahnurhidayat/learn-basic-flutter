import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveGetx extends StatelessWidget {
  ReactiveGetx({super.key});

  final reactiveC = Get.put(ReactiveGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Getx'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() {
            return Text(
              '${reactiveC.num.value}',
              style: const TextStyle(fontSize: 50),
            );
          }),
          ElevatedButton(
                    onPressed: () {
                      reactiveC.increment();
                    },
                    child: const Text('Tambah Data'))
        ]),
      ),
    );
  }
}

class ReactiveGetxController extends GetxController {
  var num = 0.obs;
  increment() {
    num += 1;
  }
}
