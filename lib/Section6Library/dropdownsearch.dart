import 'dart:convert';

import 'package:basic_flutter/Models/kota.dart';
import 'package:basic_flutter/Models/provinsi.dart';
import 'package:basic_flutter/Models/user.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as myhttp;

class DropDownSearch extends StatefulWidget {
  const DropDownSearch({super.key});

  @override
  State<DropDownSearch> createState() => _DropDownSearchState();
}

class _DropDownSearchState extends State<DropDownSearch> {
  String? idProvinsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DropDownSearch'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DropdownSearch<Provinsi>(
                dropdownBuilder: (context, selectedItem) =>
                    Text(selectedItem?.name ?? "Belum Ada Data"),
                popupProps: PopupProps.menu(
                  itemBuilder: (context, item, isSelected) => ListTile(
                    title: Text(item.name),
                    selected: isSelected,
                  ),
                  searchFieldProps: const TextFieldProps(
                      padding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))))),
                  menuProps: const MenuProps(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  showSearchBox: true,
                ),
                asyncItems: (text) async {
                  var res = await myhttp.get(Uri.parse(
                      'https://www.emsifa.com/api-wilayah-indonesia/api/provinces.json'));

                  var data = json.decode(res.body);
                  List<Provinsi> dataProfinsi = [];

                  for (var element in data) {
                    dataProfinsi.add(
                        Provinsi(id: element['id'], name: element['name']));
                  }

                  return dataProfinsi;
                },
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Provinsi",
                    hintText: "country in menu mode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    prefixIcon: Icon(Icons.map_outlined),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    idProvinsi = value!.id;
                  });
                },
              ),
            ),

            // Kota
            // if (idProvinsi != null)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DropdownSearch<Kota>(
                dropdownBuilder: (context, selectedItem) =>
                    Text(selectedItem?.name ?? "Belum Ada Kota"),
                popupProps: PopupProps.menu(
                  itemBuilder: (context, item, isSelected) => ListTile(
                    title: Text(item.name),
                  ),
                  searchFieldProps: const TextFieldProps(
                      padding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))))),
                  menuProps: const MenuProps(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  showSearchBox: true,
                ),
                asyncItems: (text) async {
                  print(idProvinsi);
                  var res = await myhttp.get(Uri.parse(
                      'https://www.emsifa.com/api-wilayah-indonesia/api/regencies/$idProvinsi.json'));

                  if (res.statusCode != 200) {
                    return [];
                  }

                  var data = json.decode(res.body);
                  List<Kota> dataProfinsi = [];

                  for (var element in data) {
                    dataProfinsi.add(Kota(
                        id: element['id'],
                        provinceId: element['province_id'],
                        name: element['name']));
                  }

                  return dataProfinsi;
                },
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Kota/Kabupaten",
                    hintText: "country in menu mode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    prefixIcon: Icon(Icons.map_outlined),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    idProvinsi = value!.id;
                  });
                },
              ),
            ),

            // Reqres.in
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DropdownSearch<UserModel>(
                dropdownBuilder: (context, selectedItem) {
                  if (selectedItem == null) {
                    return const ListTile(
                      title: Text("Belum Ada Data"),
                      leading: Icon(Icons.person),
                    );
                  }
                  return ListTile(
                      title: Text(selectedItem.firstName),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(selectedItem.avatar)));
                },
                popupProps: PopupProps.menu(
                  itemBuilder: (context, item, isSelected) => ListTile(
                    title: Text(item.firstName),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(item.avatar)),
                  ),
                  searchFieldProps: const TextFieldProps(
                      padding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))))),
                  menuProps: const MenuProps(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  showSearchBox: true,
                ),
                asyncItems: (text) async {
                  var res = await myhttp
                      .get(Uri.parse('https://reqres.in/api/users?page=2'));

                  if (res.statusCode != 200) {
                    return [];
                  }

                  List data =
                      (json.decode(res.body) as Map<String, dynamic>)['data'];
                  print(data);
                  List<UserModel> dataUser = [];

                  for (var element in data) {
                    dataUser.add(UserModel.fromJson(element));
                  }

                  return dataUser;
                },
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "User",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ],
        ));
  }
}
