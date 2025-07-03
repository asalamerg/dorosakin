import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class ArabicLanguageCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const ArabicLanguageCard({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // لعكس الاتجاه
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: AppTheme.arabicBackground,
            border: Border.all(
              color: isSelected ? AppTheme.selectedBorder : AppTheme.cardBorderColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              // دائرة الحرف
              CircleAvatar(
                radius: 18,
                backgroundColor: AppTheme.circleArabic,
                child: Text(
                  'ع',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // اسم اللغة
              Expanded(
                child: Text(
                  'اللغة العربية',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),

              // أيقونة التحديد إن وُجد
              if (isSelected)
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.teal,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
