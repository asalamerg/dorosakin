import 'Data.dart';
import 'dart:convert';

ResponseRegister responseRegisterFromJson(String str) => ResponseRegister.fromJson(json.decode(str));
String responseRegisterToJson(ResponseRegister data) => json.encode(data.toJson());
class ResponseRegister {
  ResponseRegister({
      this.success, 
      this.data, 
      this.message,});

  ResponseRegister.fromJson(dynamic json) {
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