import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarGetX extends StatelessWidget {
  const SnackBarGetX({super.key});

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
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(
            //     content: Text('Hello World!'),
            //   ),
            // );
            Get.snackbar(
              'Success',
              'Mantap',
              snackPosition: SnackPosition.TOP,
              margin:
                  const EdgeInsets.only(bottom: 20 + 20, left: 20, right: 20),
            );
          },
          child: const Text('Snackbar'),
        ),
      ),
    );
  }
}
