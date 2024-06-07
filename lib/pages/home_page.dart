import 'package:basic_flutter/components/appBarCostume.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCostume(title: "Home"),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
