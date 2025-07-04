import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:dorosakin/feature/profile/view/item_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: ListView(
        children: [
          SizedBox(height: 30.h),
          Text(
            "Hi, Dorosak 👋",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.h),
          Text(
            "Profile",
            style: TextStyle(fontSize: 18.sp, color: Colors.grey),
          ),
          SizedBox(height: 14.h),
          Row(
            children: [
              Image.asset(
                "assets/image/profile.png",
                width: 117.w,
                height: 117.h,
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dorosak",
                       style: AppTheme.listTheme.textTheme.displayMedium,
                  ),
                  Text(
                    "dorosak@gmail.com"
                      , style: AppTheme.listTheme.textTheme.displaySmall,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 24.h),


          ItemProfile(
            image: "Edit",
            title: "Edit Profile",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward, // Correct usage with IconData
          ),
          ItemProfile(
            image: "lessno",
            title: "Your lessons",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward,
          ),
          ItemProfile(
            image: "subscription",
            title: "subscription",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward,           ),
          ItemProfile(
            image: "Language",
            title: "Language",
            onPressed: () {
              // Handle edit profile action
            },
          ),
          ItemProfile(
            image: "about",
            title: "about us",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward, // Correct usage with IconData
          ),
          ItemProfile(
            image: "Help",
            title: "Help",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward,
          ),
          ItemProfile(
            image: "Terms",
            title: "Conditions",
            onPressed: () {
              // Handle edit profile action
            },
            trailingIcon: Icons.arrow_forward,
          ),
          ItemProfile(
            image: "Logout",
            title: "Logout",
            onPressed: () {
              // Handle edit profile action
            },
          ),


        ],
      ),
    );
  }
}