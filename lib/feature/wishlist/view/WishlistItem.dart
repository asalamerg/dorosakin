import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistItem extends StatefulWidget {
  final String title;
  final String studentsCount;

  WishlistItem({
    super.key,
    required this.title,
    required this.studentsCount,
  });

  @override
  State<WishlistItem> createState() => _WishlistItemState();
}

class _WishlistItemState extends State<WishlistItem> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset("assets/image/wishlist_blue.png"),
          SizedBox(width: 30.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "${widget.studentsCount} Students",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                isCheck = !isCheck;
              });
            },
            icon: Image.asset(
              "assets/image/Vector.png",
              height: 36.52.h,
              width: 36.52.w,
              fit: BoxFit.fill,
              color: isCheck ? AppTheme.buttonColor : Colors.grey, // اللون حسب الحالة
            ),
          ),
        ],
      ),
    );
  }
}
