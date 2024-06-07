import 'dart:convert';
import 'package:basic_flutter/Models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class FutureBuilderCostume extends StatelessWidget {
  List<UserModel> dataUser = [];

  FutureBuilderCostume({super.key});

  Future getData() async {
    try {
      var res = await myhttp.get(Uri.parse('https://reqres.in/api/users'));

      List data = (json.decode(res.body) as Map<String, dynamic>)['data'];
      print(data);
      for (var element in data) {
        dataUser.add(UserModel.fromJson(element));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: dataUser.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(dataUser[index].firstName),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(dataUser[index].avatar),
                  backgroundColor: Colors.grey,
                ),
                subtitle: Text(dataUser[index].email),
              ),
            );
          }
        },
      ),
    );
  }
}
