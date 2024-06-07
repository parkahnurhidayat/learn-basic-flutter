import 'package:flutter/material.dart';

class AppBarCostume extends StatelessWidget implements PreferredSizeWidget {
  AppBarCostume({
    super.key,
    required this.title,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
