import 'User.dart';
import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.token, 
      this.user,});

  Data.fromJson(dynamic json) {
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? token;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}