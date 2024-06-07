import 'dart:convert';

import 'package:basic_flutter/Models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class LatihanHttp extends StatelessWidget {
  List<StoreModel> ShowProduct = [];

  LatihanHttp({super.key});

  Future getProduct() async {
    var res = await myhttp.get(Uri.parse('https://fakestoreapi.com/products'));
    var dataProdut = json.decode(res.body);
    for (var element in dataProdut) {
      ShowProduct.add(StoreModel.fromJson(element));
    }

    // print(ShowProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Market'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return GridView.builder(
            itemCount: ShowProduct.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
            itemBuilder: (context, index) => Card(
                child: SizedBox(
              height: 300,
              child: Column(
                children: [
                  Image.network(
                    height: 120,
                    width: double.infinity,
                    ShowProduct[index].image,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(ShowProduct[index].title.substring(0, 15)),
                  ),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
