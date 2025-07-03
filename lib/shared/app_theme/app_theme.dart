
import 'package:flutter/material.dart';

class AppTheme {

  static const   Color blackText=Color(0XFF1D1D1D);
  static const   Color greyText=Color(0XFF404040);

  // خلفية الشاشة
  static const Color background = Color(0xFFFFFFFF);

  // لون النص الرئيسي
  static const Color primaryText = Color(0xFF000000);

  // ألوان الأزرار
  static const Color buttonColor = Color(0xFFED9231); // برتقالي

  // ألوان البطاقات غير المفعّلة
  static const Color cardBorderColor = Color(0xFFEEEEEE);
  static const Color arabicBackground = Color(0xFFE7F9FF);
  static const Color englishBackground = Color(0xFFFFF3E6);

  // لون الحرف داخل الدائرة
  static const Color circleArabic = Color(0xFFB2F0FF);
  static const Color circleEnglish = Color(0xFFFFE0B2);

  // لون التحديد السفلي
  static const Color selectedBorder = Color(0xFF00BCD4); // أزرق فاتح
  static const Color selectedCheck = Color(0xFFFF9800); // لون الدائرة + صح

  static ThemeData listTheme =ThemeData(
    textTheme: TextTheme(displayMedium: TextStyle(fontSize: 24 , color: AppTheme.blackText , fontWeight: FontWeight.bold,),
       displaySmall: TextStyle( fontSize: 16 ,color: AppTheme.greyText ,  )
    ),

  );
}