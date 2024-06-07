import 'package:basic_flutter/Section7GETX/DependencyGetX/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});
  UserController userC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '${userC.user2['name']} - ${userC.user2['age']}',
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
