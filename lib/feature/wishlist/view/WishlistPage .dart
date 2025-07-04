
import 'package:dorosakin/feature/wishlist/view/WishlistItem.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                Text("Hi, Dorosak 👋" ,style: AppTheme.listTheme.textTheme.displayMedium,),
                Spacer(),
                Image.asset("assets/image/profile.png" ,height: 50.h, width: 50.w,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Wishlist" ,style: AppTheme.listTheme.textTheme.displayMedium,),
                Spacer(),
                Image.asset("assets/image/online-study.png" ,height: 117.37.h, width: 117.37.w,),
              ],
            ),
            SizedBox(height: 3,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(children: [Text("We re here to guarantee"),
              Text("your success")],) ,

              Image.asset("assets/image/Wishlist.png"),
            ],),
            SizedBox(height: 10.h),
            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '532',),
            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '300',),
            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '444',),
            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '22',),

            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '555',),
            WishlistItem(title: 'Lorem Ipsum is simply.', studentsCount: '999',),


          ],
        ),
      ),
    );
  }
}