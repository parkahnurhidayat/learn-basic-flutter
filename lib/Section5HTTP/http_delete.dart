import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpDelete extends StatefulWidget {
  const HttpDelete({super.key});

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  late String data;
  late int id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = 'Belum ada data';
    id = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Delete'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                var res = await myhttp
                    .get(Uri.parse('https://reqres.in/api/users/2'));

                Map<String, dynamic> dataApi =
                    json.decode(res.body) as Map<String, dynamic>;

                setState(() {
                  id = dataApi['data']['id'];
                  data =
                      'ID : ${dataApi['data']['id']} \nEmail : ${dataApi['data']['email']} \nName : ${dataApi['data']['first_name']} ${dataApi['data']['last_name']}';
                });
              },
              icon: const Icon(Icons.get_app_outlined))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(data),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () async {
                var res = await myhttp
                    .delete(Uri.parse('https://reqres.in/api/users/$id'));
                if (res.statusCode == 204) {
                  print(res.statusCode);
                  setState(() {
                    data = 'Data Berhasil Di Hapus';
                  });
                }
              },
              child: const Text('Delete Data')),
        ],
      ),
    );
  }
}
