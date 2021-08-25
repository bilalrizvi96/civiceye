import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

Welcome welcomeFromJson(var str) => Welcome.fromJson(str);

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.status,
    required this.data,
    required this.message,
  });

  bool status;
  List<Datum> data;
  String message;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.type,
    required this.check,
  });

  int id;
  String name;
  String type;
  var check;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
      id: json["id"], name: json["name"], type: json["type"], check: false.obs);

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "type": type, "check": false};
}
