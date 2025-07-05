import 'package:dorosakin/feature/auth/view_model/auth_cubit.dart';
import 'package:dorosakin/feature/auth/view_model/auth_state.dart';
import 'package:dorosakin/feature/home_screen/home_screen.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//
// class LoginScreen extends StatelessWidget {
// static const  String routeName="LoginScreen";
//   LoginScreen({super.key});
//
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final GlobalKey<FormState> formKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(height: 40),
//               Image.asset("assets/image/auth_image.png" ,width: 182.w,height: 69.99.h, fit: BoxFit.fill,) ,
//               SizedBox(height: 40),
//               Text( "Welcome Back", style: AppTheme.listTheme.textTheme.displayMedium,),
//               SizedBox(height: 10),
//               Text( "Log in to your account",style: AppTheme.listTheme.textTheme.displaySmall,),
//
//               SizedBox(height: 40),
//
//               // البريد الإلكتروني
//               TextFormField(
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.email),
//                   labelText: "البريد الإلكتروني",
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return "يرجى إدخال البريد الإلكتروني";
//                   if (!RegExp(r"^[\w-.]+@([\w-]+\.)+\w{2,4}").hasMatch(value)) return "يرجى إدخال بريد إلكتروني صحيح";
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//
//               // كلمة المرور
//               TextFormField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.lock),
//                   labelText: "كلمة المرور",
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return "يرجى إدخال كلمة المرور";
//                   if (value.length < 6) return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
//                   return null;
//                 },
//               ),
//               SizedBox(height: 30),
//
//               // زر تسجيل الدخول
//               BlocConsumer<AuthCubit, AuthState>(
//                 listener: (context, state) {
//                   if (state is AuthSuccessLogin) {
//                     Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
//                   } else if (state is AuthFailure) {
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
//                   }
//                 },
//                 builder: (context, state) {
//                   if (state is AuthLoading) {
//                     return CircularProgressIndicator();
//                   }
//                   return SizedBox(
//                     width: double.infinity,
//                     height: 50,
//                     child: ConfirmButton(
//                       onPressed: () {
//                         if (formKey.currentState!.validate()) {
//                           context.read<AuthCubit>().login(
//                             emailController.text.trim(),
//                             passwordController.text.trim(),
//                           );
//                         }
//                       },
//                       label: "Log In",
//
//                     ),
//                   );
//                 },
//               ),
//
//               SizedBox(height: 20),
//
//               // رابط إنشاء حساب جديد
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Don’t Have An Account? " ,style: AppTheme.listTheme.textTheme.displaySmall,),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pushNamed(RegisterScreen.routeName);
//                     },
//                     child: Text(
//                       "Sign Up"
//                         ,style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: AppTheme.buttonColor)
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Image.asset(
                "assets/image/auth_image.png",
                width: 182,
                height: 70,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 40),
              Text("Welcome Back", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              Text("Log in to your account", style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 40),

              // البريد الإلكتروني
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "البريد الإلكتروني",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return "يرجى إدخال البريد الإلكتروني";
                  if (!RegExp(r"^[\w-.]+@([\w-]+\.)+\w{2,4}$").hasMatch(value)) return "يرجى إدخال بريد إلكتروني صحيح";
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // كلمة المرور
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "كلمة المرور",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return "يرجى إدخال كلمة المرور";
                  if (value.length < 6) return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
                  return null;
                },
              ),
              const SizedBox(height: 30),

              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is LoginFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  } else if (state is LoginSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.message)),
                    );
                    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                  }
                },
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ConfirmButton(
                      label: "Log In",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                            emailController.text.trim(),
                            passwordController.text.trim(),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),

              // رابط إنشاء حساب جديد
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t Have An Account? ", style: Theme.of(context).textTheme.bodyMedium),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('RegisterScreen'),
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:AppTheme.buttonColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

