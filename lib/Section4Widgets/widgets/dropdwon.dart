import 'package:flutter/material.dart';

class ShowDropDwon extends StatefulWidget {
  const ShowDropDwon({super.key});

  @override
  State<ShowDropDwon> createState() => _MyAppState();
}

class _MyAppState extends State<ShowDropDwon> {
  final List<Map<String, dynamic>> data = [
    {'judul': 'Tampilan - 1', 'value': 1},
    {'judul': 'Tampilan - 2', 'value': 2},
    {'judul': 'Tampilan - 3', 'value': 3},
  ];

  late int dataAwal;

  @override
  void initState() {
    super.initState();
    dataAwal = data[0]['value'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DropdownButton(
            value: dataAwal,
            items: data
                .map((e) => DropdownMenuItem(
                      value: e['value'],
                      child: Text(' ${e['judul']}'),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value as int;
                print(value);
              });
            },
          ),
        ),
      ),
    );
  }
}
