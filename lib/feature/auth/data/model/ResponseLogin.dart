import 'Data.dart';
import 'dart:convert';

ResponseLogin responseLoginFromJson(String str) => ResponseLogin.fromJson(json.decode(str));
String responseLoginToJson(ResponseLogin data) => json.encode(data.toJson());
class ResponseLogin {
  ResponseLogin({
      this.success, 
      this.data, 
      this.message,});

  ResponseLogin.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }
  bool? success;
  Data? data;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['message'] = message;
    return map;
  }

}