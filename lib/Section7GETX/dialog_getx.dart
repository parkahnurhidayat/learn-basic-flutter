import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGetX extends StatelessWidget {
  const DialogGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Getx Snackbar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDialog(
            //   context: context,
            //   builder: (context) => const AlertDialog(
            //     title: Text('Dialog Title'),
            //   ),
            // );
            Get.defaultDialog(
              title: 'Dialog Title',
              content: const Text('This is content'),
              barrierDismissible: false,
            );
          },
          child: const Text('Dialog'),
        ),
      ),
    );
  }
}
