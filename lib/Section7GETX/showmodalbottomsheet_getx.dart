import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowModalBottomSheetGetX extends StatelessWidget {
  const ShowModalBottomSheetGetX({super.key});

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
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => SizedBox(
            //     height: 300,
            //     child: ListView(
            //       children: const [
            //         ListTile(
            //           title: Text('Item 1'),
            //         ),
            //         ListTile(
            //           title: Text('Item 2'),
            //         ),
            //         ListTile()
            //       ],
            //     ),
            //   ),
            // );

            Get.bottomSheet(
              Container(
                color: Colors.white,
                height: 300,
                child: ListView(
                  children: const [
                    ListTile(
                      title: Text('Item 1'),
                    ),
                    ListTile(
                      title: Text('Item 2'),
                    ),
                    ListTile()
                  ],
                ),
              ),
            );
          },
          child: const Text('ShowModalBottomSheet'),
        ),
      ),
    );
  }
}
