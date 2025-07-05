// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ItemProfile extends StatelessWidget {
//   final String image;
//   final String title;
//   final VoidCallback? onPressed;
//   final double spacing;
//   final IconData? trailingIcon; // Changed to IconData instead of Icon
//
//   const ItemProfile({
//     super.key,
//     required this.image,
//     required this.title,
//     this.onPressed,
//     this.spacing = 9.0,
//     this.trailingIcon, // Now accepts IconData like Icons.arrow_forward
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(5.w), // Made responsive
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(25.r),
//           color: const Color(0xFFE6F7FF),
//         ),
//         child: Row(
//           children: [
//             Image.asset(
//               "assets/image/$image.png",
//               width: 50.w,
//               height: 50.h,
//             ),
//             SizedBox(width: spacing.w),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 16.sp, // Made responsive
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//             const Spacer(),
//             if (trailingIcon != null)
//               Icon(
//                 trailingIcon, // Now using IconData directly
//                 size: 20.w,
//                 color: Colors.grey, // Changed from transparent to grey
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemProfile extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onPressed;
  final double spacing;
  final IconData? trailingIcon;
  final Color backgroundColor;
  final Color textColor;
  final double imageSize;
  final double iconSize;
  final EdgeInsetsGeometry? padding;

  const ItemProfile({
    super.key,
    required this.image,
    required this.title,
    this.onPressed,
    this.spacing = 12.0,
    this.trailingIcon,
    this.backgroundColor = const Color(0xFFE6F7FF),
    this.textColor = Colors.black,
    this.imageSize = 24.0,
    this.iconSize = 20.0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(25.r),
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/image/$image.png",
                width: imageSize.w,
                height: imageSize.h,
                color: const Color(0xFF0288D1), // لون موحد للأيقونات
              ),
              SizedBox(width: spacing.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
              if (trailingIcon != null)
                Icon(
                  trailingIcon,
                  size: iconSize.w,
                  color: Colors.grey[600],
                ),
            ],
          ),
        ),
      ),
    );
  }
}