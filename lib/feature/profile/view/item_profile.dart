import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemProfile extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onPressed;
  final double spacing;
  final IconData? trailingIcon; // Changed to IconData instead of Icon

  const ItemProfile({
    super.key,
    required this.image,
    required this.title,
    this.onPressed,
    this.spacing = 9.0,
    this.trailingIcon, // Now accepts IconData like Icons.arrow_forward
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w), // Made responsive
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: const Color(0xFFE6F7FF),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/image/$image.png",
              width: 50.w,
              height: 50.h,
            ),
            SizedBox(width: spacing.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp, // Made responsive
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
            if (trailingIcon != null)
              Icon(
                trailingIcon, // Now using IconData directly
                size: 20.w,
                color: Colors.grey, // Changed from transparent to grey
              ),
          ],
        ),
      ),
    );
  }
}