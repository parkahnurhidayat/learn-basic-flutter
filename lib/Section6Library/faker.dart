import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class FakerLibrary extends StatelessWidget {
  const FakerLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Faker'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(faker.image.image(random: true)),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(faker.internet.email()),
          
        ),
      ),
    );
  }
}
