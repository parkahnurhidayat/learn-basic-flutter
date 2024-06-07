import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page1.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page2.dart';
import 'package:basic_flutter/components/appBarCostume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCostume(title: 'Home'),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ))),
          onPressed: () {
            // Get.to(const PageSatu());
            Get.toNamed('/page_satu');
          },
          child: const Text(
            'Page1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ))),
          onPressed: () {
            // Get.to(const PageDua());
            Get.toNamed('/page_dua');
          },
          child: const Text(
            'Page2',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
