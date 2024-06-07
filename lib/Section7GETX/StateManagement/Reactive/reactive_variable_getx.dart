import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveVariable extends StatelessWidget {
  ReactiveVariable({super.key});

  final reactiveC = Get.put(ReactiveVariableC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Variable'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  '${reactiveC.dataInt.value}',
                  style: const TextStyle(fontSize: 25),
                )),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      reactiveC.incrementInt();
                    },
                    child: const Text('+')),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      reactiveC.decrementInt();
                    },
                    child: const Text('-')),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  '${reactiveC.dataDouble.value}',
                  style: const TextStyle(fontSize: 25),
                )),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      reactiveC.incrementDouble();
                    },
                    child: const Text('+')),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      reactiveC.decrementDouble();
                    },
                    child: const Text('-')),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  reactiveC.dataString.value,
                  style: const TextStyle(fontSize: 25),
                )),
            Row(
              children: [
                ElevatedButton(onPressed: () {
                  reactiveC.ubahString();
                }, child: Obx(() {
                  Widget textE;
                  if (reactiveC.dataString.value == 'data') {
                    textE = const Text('Ubah Data');
                  } else {
                    textE = const Text('Reset');
                  }
                  return textE;
                })),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  '${reactiveC.DataBool.value}',
                  style: const TextStyle(fontSize: 25),
                )),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      reactiveC.UbahBool();
                    },
                    child: const Text('Ubah Data')),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
                  '${reactiveC.DataList.value}',
                  style: const TextStyle(fontSize: 25),
                )),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      reactiveC.incrementList();
                    },
                    child: const Text('+')),
              ],
            )
          ],
        ),
      ]),
    );
  }
}

class ReactiveVariableC extends GetxController {
  RxInt dataInt = 0.obs;
  RxDouble dataDouble = 0.0.obs;
  RxString dataString = 'data'.obs;
  RxBool DataBool = false.obs;
  RxList<int> DataList = [1, 2, 3].obs;

  int tambahAngka = 4;

  void incrementList() {
    DataList.add(tambahAngka);
    tambahAngka++;
  }

  void UbahBool() {
    // if (DataBool.value == false) {
    //   DataBool.value = true;
    // } else {
    //   DataBool.value = false;
    // }

    DataBool.toggle();
  }

  void ubahString() {
    if (dataString.value == 'data') {
      dataString.value = 'Data (Update)';
    } else {
      dataString.value = 'data';
    }
  }

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;
}
