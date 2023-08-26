import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? status;
  String? message;
  Data? data;

  UserModel({
    this.status,
    this.message,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json['status'],
        message: json['message'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}

class Data {
  User user;
  String token;

  Data({
    required this.user,
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json['user']),
        token: json['token'],
      );

  Map<String, dynamic> toJson() => {
        'user': user.toJson(),
        'token': token,
      };
}

class User {
  int id;
  String name;
  String email;
  String mobileNumber;
  dynamic emailVerifiedAt;
  dynamic status;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobileNumber,
    this.emailVerifiedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        mobileNumber: json['mobile_number'],
        emailVerifiedAt: json['email_verified_at'],
        status: json['status'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'mobile_number': mobileNumber,
        'email_verified_at': emailVerifiedAt,
        'status': status,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
      };
}
