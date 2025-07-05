import 'dart:convert';

ResponseLogout responseLogoutFromJson(String str) => ResponseLogout.fromJson(json.decode(str));
String responseLogoutToJson(ResponseLogout data) => json.encode(data.toJson());

class ResponseLogout {
  ResponseLogout({
    this.success,
    this.message,
  });

  bool? success;
  String? message;

  factory ResponseLogout.fromJson(Map<String, dynamic> json) => ResponseLogout(
    success: json['success'],
    message: json['message'],
  );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
  };
}
