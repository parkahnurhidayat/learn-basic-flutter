import 'package:basic_flutter/components/appBarCostume.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCostume(title: "Cart"),
      body: const Center(
        child: Text('Cart'),
      ),
    );
  }
}
