import 'package:basic_flutter/Section7GETX/DependencyGetX/controller/user_controller.dart';
import 'package:basic_flutter/Section7GETX/DependencyGetX/page2.dart';

import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/home.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page1.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page2.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page3.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page4.dart';
import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page5.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final userController = Get.lazyPut(() => UserController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/page_satu', page: () => const PageSatu()),
        GetPage(name: '/page_dua', page: () => const PageDua()),
        GetPage(name: '/page_tiga', page: () => const PageTiga()),
        GetPage(name: '/page_empat', page: () => const PageEmpat()),
        GetPage(name: '/page_lima', page: () => const PageLima()),
      ],
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class Controller extends GetxController {
  var num = 0.obs;
  increment() {
    num = num + 1;
  }

  decrement() {
    num = num - 1;
  }
}
