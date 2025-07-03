
import 'package:dorosakin/feature/static_ui/Improve_your_skills.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindACourse extends StatelessWidget {
  static const String routeName="FindACourse";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
        SizedBox(height: 144.h,),
        Image.asset("assets/image/find_course.png" ,height: 264.h ,width: 375.w ,) ,
        SizedBox(height: 36.h,) ,
        Text("Find a course for you" ,style: AppTheme.listTheme.textTheme.displayMedium,),
        SizedBox(height: 8.h,) ,

        Text("Quarantine is the perfect time to spend your" ,style: AppTheme.listTheme.textTheme.displaySmall,),
        Text("day learning something new, from anywhere!" ,style: AppTheme.listTheme.textTheme.displaySmall,),

        SizedBox(height: 100.h,) ,


        Row(
          children: [
          TextButton(onPressed: (){}, child: Text("Skip") ,),
            Spacer(),
            ConfirmButton(onPressed: (){
              Navigator.of(context).pushNamed(ImproveYourSkills.routeName);
            }, label: "-->",width:49.w , height: 49.h,),

          ],)

      ],),
    );
  }
}