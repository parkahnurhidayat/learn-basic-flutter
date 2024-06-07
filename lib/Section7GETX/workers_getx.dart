import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersGetX extends StatelessWidget {
  WorkersGetX({super.key});
  final PantauC = Get.put(PantautController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Workers'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Data Pantantau Ke Berapa ${PantauC.num.value}x')),
              TextField(
                onChanged: (value) => PantauC.increment(),
                decoration: const InputDecoration(labelText: 'Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PantautController extends GetxController {
  RxInt num = 0.obs;

  increment() => num++;

  @override
  void onInit() {
    // ever(num, (callback) => print('perubahan'));
    // once(num, (callback) => print('cuma 1x pantau'));
    // debounce( num,(callback) =>print('Perubahan setiap 2 detik setelah berhenti memantau'),time: const Duration(seconds: 2));
    interval(num, (callback) => print('perubahan terjadi selama 2 detik'),
        time: const Duration(seconds: 2));
    super.onInit();
  }
}
