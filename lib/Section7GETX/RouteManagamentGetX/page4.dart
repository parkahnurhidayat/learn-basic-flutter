import 'package:basic_flutter/Section7GETX/RouteManagamentGetX/page5.dart';
import 'package:basic_flutter/components/appBarCostume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCostume(title: 'PageEmpat'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('PageEmpat'),
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 4, 183, 248),
                      Color.fromARGB(255, 79, 152, 212),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 16, 16, 16),
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  // Get.to(const PageLima());
                  Get.toNamed('/page_lima');
                },
                child: const Text(
                  'Next >>',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
