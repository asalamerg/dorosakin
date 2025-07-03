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
        },
        initialRoute:LanguageSetting.routeName  ,
        theme: AppTheme.listTheme,
        themeMode: ThemeMode.light ,

      ),
    );
  }
}
