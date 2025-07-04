import 'package:dorosakin/feature/auth/login/view/login_screen.dart';
import 'package:dorosakin/feature/auth/register/view/register_screen.dart';
import 'package:dorosakin/feature/static_ui/Improve_your_skills.dart';
import 'package:dorosakin/feature/static_ui/find_a_course.dart';
import 'package:dorosakin/feature/static_ui/learn_anytime.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/language_settings/view/language_setting.dart';

void main() {
  runApp( Dorosakin());
}

class Dorosakin extends StatelessWidget{
  const Dorosakin({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),

      child: MaterialApp(
        routes: {
          LanguageSetting.routeName :(context)=>LanguageSetting(),
          LearnAnytime.routeName :(context)=>LearnAnytime(),
          FindACourse.routeName :(context)=>FindACourse(),
          ImproveYourSkills.routeName :(context)=>ImproveYourSkills(),
          RegisterScreen.routeName :(context)=>RegisterScreen() ,
          LoginScreen.routeName :(context)=>LoginScreen() ,


        },
        initialRoute:LanguageSetting.routeName  ,
        theme: AppTheme.listTheme,
        themeMode: ThemeMode.light ,

      ),
    );
  }
}
