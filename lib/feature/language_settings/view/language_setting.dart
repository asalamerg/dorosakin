
import 'package:dorosakin/feature/language_settings/view/arabic_language_card.dart';
import 'package:dorosakin/feature/static_ui/learn_anytime.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:dorosakin/feature/language_settings/view/english_language_card.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageSetting extends StatelessWidget{
 static const  String routeName='LanguageSetting';

  const LanguageSetting({super.key});
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      
        body: Padding(
          padding:  EdgeInsets.all(27),
          child: Column(children: [
           SizedBox(height: 99.h,) ,

            Text("Language Setting" ,style: AppTheme.listTheme.textTheme.displayMedium,),
            SizedBox(height: 8.h,) ,
            Text("Choose Your Preferred Languages " ,style: AppTheme.listTheme.textTheme.displaySmall,),
            SizedBox(height: 23.h,) ,
            EnglishLanguageCard(
              label: 'English',
              letter: 'A',
              isSelected: true,
              onTap: () {
                // تحديث الحالة عند الضغط
              },
            ),
            SizedBox(height: 41.h,) ,
            ArabicLanguageCard(
              isSelected: true,
              onTap: () {
                // عند الضغط يتم التحديد
              },
            ),
            SizedBox(height: 181.h,) ,
            ConfirmButton(onPressed: (){
              Navigator.of(context).pushNamed(LearnAnytime.routeName);
            }, label: "Confirm",width:322.w , height: 48.h,),

          ],),
        )
      
      ),
    );
  }
}