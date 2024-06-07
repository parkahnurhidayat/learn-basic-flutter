import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class IntlLibrary extends StatelessWidget {
  const IntlLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Intl'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(faker.image.image(random: true)),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(DateFormat.yMMMMd().add_jm().format(DateTime.now())),
        ),
      ),
    );
  }
}
