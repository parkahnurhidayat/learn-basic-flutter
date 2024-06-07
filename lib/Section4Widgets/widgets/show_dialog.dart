import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                title: const Text('Judul'),
                content: const Text('dqbwdbkqbbkqbdkjqkbk'),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      //Untuk menutup dialog
                      Navigator.pop(context);
                    },
                    child: const Text("CANCEL"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Dialog")),
    );
  }
}
