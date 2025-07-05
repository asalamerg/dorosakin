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
      this.updatedAt,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['deleted_at'] = deletedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}