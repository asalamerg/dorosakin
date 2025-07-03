import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final double? width;
  final double? height;

  const ConfirmButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,  // افتراضي: ياخذ كل العرض
      height: height ?? 50,             // افتراضي: 50
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
