import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  num? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    emailVerifiedAt: json['email_verified_at'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'email_verified_at': emailVerifiedAt,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };
}
