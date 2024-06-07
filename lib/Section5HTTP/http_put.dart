import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as myhttp;

class HttpPut extends StatefulWidget {
  const HttpPut({super.key});

  @override
  State<HttpPut> createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPut> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  late String data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = 'belum ada data';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Put'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: jobC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              labelText: 'Job',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              var res = await myhttp.put(
                  Uri.parse('https://reqres.in/api/users/4'),
                  body: {"name": nameC.text, "job": jobC.text});

              Map<String, dynamic> dataApi =
                  json.decode(res.body) as Map<String, dynamic>;
              print(dataApi);

              setState(() {
                data =
                    'Status Code ${res.statusCode} \nName : ${dataApi['name']} \nJob : ${dataApi['job']}';
              });
            },
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
            child: const Text('Submit'),
          ),
          const SizedBox(
            height: 40,
          ),
          const Divider(),
          Text(data)
        ],
      ),
    );
  }
}
