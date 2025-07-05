import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dorosakin/feature/auth/view_model/auth_cubit.dart';
import 'package:dorosakin/feature/auth/view_model/auth_state.dart';
import 'package:dorosakin/shared/widget/confirm_button.dart';
import 'package:dorosakin/feature/auth/view/login/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";
  RegisterScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              Text("New Account", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              Text("Create your account", style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),

              // الاسم الكامل
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: "الاسم الكامل",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return "يرجى إدخال الاسم";
                  return null;
                },
              ),
              const SizedBox(height: 20),

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
                  if (state is RegisterFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  } else if (state is RegisterSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.message)),
                    );
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  }
                },
                builder: (context, state) {
                  if (state is RegisterLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ConfirmButton(
                      label: "Sign Up",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<AuthCubit>().register(
                            nameController.text.trim(),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: Theme.of(context).textTheme.bodyMedium),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      "Log In",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.buttonColor),
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
