import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class EnglishLanguageCard extends StatelessWidget {
  final String label;
  final String letter;
  final bool isSelected;
  final VoidCallback onTap;


  const EnglishLanguageCard({
    super.key,
    required this.label,
    required this.letter,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppTheme.englishBackground,
          border: Border.all(
            color: isSelected ? AppTheme.selectedCheck : AppTheme.cardBorderColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // الدائرة بالحرف
            CircleAvatar(
              radius: 18,
              backgroundColor: AppTheme.circleEnglish,
              child: Text(
                letter,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(width: 12),

            // نص اللغة
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),

            // أيقونة التحديد
            if (isSelected)
              const Icon(
                Icons.check_circle_outline,
                color: Colors.orange,
              ),
          ],
        ),
      ),
    );
  }
}
