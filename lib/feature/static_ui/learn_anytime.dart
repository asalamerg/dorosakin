
import 'package:dorosakin/feature/static_ui/find_a_course.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearnAnytime extends StatelessWidget {
  static const String routeName="LearnAnytime";

  const LearnAnytime({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(25),
       child: Column(children: [
         SizedBox(height: 144.h,),
         Image.asset("assets/image/illustration.png" ,height: 264.h ,width: 375.w ,) ,
         SizedBox(height: 36.h,),
         Text("Choose Your Preferred Languages " , style: AppTheme.listTheme.textTheme.displayMedium,),
         SizedBox(height: 8.h,) ,

         Text("Quarantine is the perfect time to spend your" ,style: AppTheme.listTheme.textTheme.displaySmall,),
         Text(" day learning something new, from anywhere!" ,style: AppTheme.listTheme.textTheme.displaySmall,),

         SizedBox(height: 100.h,) ,
         Row(
           children: [
             TextButton(onPressed: (){}, child: Text("Skip") ,),
             Spacer(),
             ConfirmButton(onPressed: (){
               Navigator.of(context).pushNamed(FindACourse.routeName);
             }, label: "-->",width:49.w , height: 49.h,),

           ],)

       ],),
     ),
   );
  }
}