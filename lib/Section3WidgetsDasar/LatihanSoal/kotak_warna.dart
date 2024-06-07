import 'package:flutter/material.dart';

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    super.key,
    required this.warna,
    required this.text,
  });
  final Color warna;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
