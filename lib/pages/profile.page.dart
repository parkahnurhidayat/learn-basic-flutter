import 'package:basic_flutter/components/appBarCostume.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCostume(title: "Profile"),
      body: const Center(
        child: Text('Prodile'),
      ),
    );
  }
}
