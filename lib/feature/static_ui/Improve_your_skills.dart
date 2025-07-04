
import 'package:dorosakin/feature/auth/login/view/login_screen.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImproveYourSkills extends StatelessWidget {
  static const String routeName="ImproveYourSkills";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 130.h,),
        Image.asset("assets/image/improve.png" ,height: 264.h ,width: 375.w ,) ,
        SizedBox(height: 36.h,),
        Text("Improve your skills" ,style: AppTheme.listTheme.textTheme.displayMedium,),

        SizedBox(height: 8.h,) ,
        Text("Quarantine is the perfect time to spend your " ,style: AppTheme.listTheme.textTheme.displaySmall,),
        Text(" day learning something new, from anywhere!" ,style: AppTheme.listTheme.textTheme.displaySmall,),

        SizedBox(height: 110.h,) ,
        ConfirmButton(onPressed: ()
        {
         Navigator.of(context).pushNamed(LoginScreen.routeName);
        }, label: "Let’s Start",width:322.w , height: 48.h,),


      ],),
    );
  }
}

