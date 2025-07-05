import 'package:flutter/material.dart';

class ErrorDialog {
  static void show(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("حدث خطأ"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("حسناً"),
          ),
        ],
      ),
    );
  }
}
