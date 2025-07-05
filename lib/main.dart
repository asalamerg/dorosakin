import 'package:dorosakin/feature/auth/view/register/view/register_screen.dart';
import 'package:dorosakin/feature/auth/view/login/view/login_screen.dart';
import 'package:dorosakin/feature/home_screen/home_screen.dart';
import 'package:dorosakin/feature/language_settings/view/language_setting.dart';
import 'package:dorosakin/feature/static_ui/Improve_your_skills.dart';
import 'package:dorosakin/feature/static_ui/find_a_course.dart';
import 'package:dorosakin/feature/static_ui/learn_anytime.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/my_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'feature/auth/view_model/auth_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const Dorosakin());
}

class Dorosakin extends StatelessWidget {
  const Dorosakin({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit(),
            ),
          ],
          child: MaterialApp(
            routes: {
              LanguageSetting.routeName: (context) => LanguageSetting(),
              LearnAnytime.routeName: (context) => LearnAnytime(),
              FindACourse.routeName: (context) => FindACourse(),
              ImproveYourSkills.routeName: (context) => ImproveYourSkills(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
            },
            initialRoute: LanguageSetting.routeName,
            theme: AppTheme.listTheme,
            themeMode: ThemeMode.light,
          ),
        );
      },
    );
  }
}
