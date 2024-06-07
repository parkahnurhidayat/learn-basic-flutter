// To parse this JSON data, do
//
//     final kota = kotaFromJson(jsonString);

import 'dart:convert';

Kota kotaFromJson(String str) => Kota.fromJson(json.decode(str));

String kotaToJson(Kota data) => json.encode(data.toJson());

class Kota {
  String id;
  String provinceId;
  String name;

  Kota({
    required this.id,
    required this.provinceId,
    required this.name,
  });

  factory Kota.fromJson(Map<String, dynamic> json) => Kota(
        id: json["id"],
        provinceId: json["province_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "province_id": provinceId,
        "name": name,
      };
  @override
  String toString() => name;
}
