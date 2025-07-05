import 'package:dorosakin/feature/auth/view/register/view/register_screen.dart';
import 'package:dorosakin/feature/auth/view_model/auth_cubit.dart';
import 'package:dorosakin/feature/auth/view_model/auth_state.dart';
import 'package:dorosakin/feature/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {
static const  String routeName="LoginScreen";
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // شعار أو عنوان
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  ),
                  SizedBox(height: 40),

                  // البريد الإلكتروني
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "البريد الإلكتروني",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return "يرجى إدخال البريد الإلكتروني";
                      if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w]{2,4}").hasMatch(value)) return "يرجى إدخال بريد إلكتروني صحيح";
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  // كلمة المرور
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "كلمة المرور",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return "يرجى إدخال كلمة المرور";
                      if (value.length < 6) return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
                      return null;
                    },
                  ),
                  SizedBox(height: 30),

                  // زر تسجيل الدخول
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccessLogin) {
                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      } else if (state is AuthFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
                      }
                    },
                    builder: (context, state) {
                      if (state is AuthLoading) {
                        return CircularProgressIndicator();
                      }
                      return SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<AuthCubit>().login(
                                emailController.text.trim(),
                                passwordController.text.trim(),
                              );
                            }
                          },
                          child: Text("تسجيل الدخول", style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 20),

                  // رابط إنشاء حساب جديد
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("لا تملك حساب؟ "),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(RegisterScreen.routeName);
                        },
                        child: Text(
                          "إنشئ حساب الآن",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
