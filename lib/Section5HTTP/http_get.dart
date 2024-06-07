import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpGet extends StatefulWidget {
  const HttpGet({super.key});

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String id;
  late String email;
  late String name;
  @override
  void initState() {
    super.initState();

    id = '';
    email = '';
    name = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID : $id'),
            Text('Email : $email'),
            Text('Name : $name'),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () async {
                  var res = await myhttp
                      .get(Uri.parse('https://reqres.in/api/users/2'));
                  Map<String, dynamic> dataApi =
                      json.decode(res.body) as Map<String, dynamic>;

                  if (res.statusCode == 200) {
                    print('Success');
                    setState(() {
                      id = dataApi['data']['id'].toString();
                      email = dataApi['data']['email'].toString();
                      name = '${dataApi['data']['first_name']} ' +
                          dataApi['data']['last_name'];
                    });
                  } else {
                    print('Failed');
                    setState(() {
                      name = 'Error ${res.statusCode}';
                    });
                  }
                },
                child: const Text("Ambil Data"))
          ],
        ),
      ),
    );
  }
}
