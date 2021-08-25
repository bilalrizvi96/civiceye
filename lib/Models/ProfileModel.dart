import 'dart:convert';

UserProfile userProfileFromJson(var str) => UserProfile.fromJson(str);

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    required this.status,
    required this.data,
    required this.message,
  });

  bool status;
  Data data;
  String message;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    status: json["status"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.mobileNo,
    required this.address,
    required this.roleId,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.emergencyNumbers,
  });

  int id;
  String name;
  String email;
  String mobileNo;
  String address;
  int roleId;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  var emergencyNumbers;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    mobileNo: json["mobile_no"],
    address: json["address"],
    roleId: json["role_id"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    emergencyNumbers:json["emergency_numbers"]==null?null : List<EmergencyNumber>.from(json["emergency_numbers"].map((x) => EmergencyNumber.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "mobile_no": mobileNo,
    "address": address,
    "role_id": roleId,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "emergency_numbers": List<dynamic>.from(emergencyNumbers.map((x) => x.toJson())),
  };
}

class EmergencyNumber {
  EmergencyNumber({
    required this.name,
    required this.number,
  });

  String name;
  String number;

  factory EmergencyNumber.fromJson(Map<String, dynamic> json) => EmergencyNumber(
    name: json["name"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "number": number,
  };
}
