import 'package:flutter/material.dart';

class ShowModalBotomSheet extends StatelessWidget {
  const ShowModalBotomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.photo),
                          title: const Text("Photo"),
                          onTap: () {
                            print('Photo');
                          },
                        ),
                        const ListTile(
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.file_copy),
                          title: Text("File"),
                        ),
                        const ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Setting"),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('ShowModalBotomSheet')),
      ),
    );
  }
}
