
import 'package:dorosakin/feature/auth/register/view/register_screen.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/default_button.dart';
import 'package:dorosakin/shared/widget/text_form_field.dart';
import 'package:dorosakin/shared/widget/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget{
 static const String routeName="LoginScreen";

  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController  emailController =TextEditingController();
  TextEditingController  passwordController =TextEditingController();
 var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: Column(children: [
          SizedBox(height: 35.h,),
          Image.asset("assets/image/auth_image.png" , height:  72.h,width:  182.w,fit: BoxFit.fill,) ,
          SizedBox(height: 25.h,),
          Text("Welcome Back",style: AppTheme.listTheme.textTheme.displayMedium) ,
          SizedBox(height: 7.h,),
          Text("Log in to your account ",style: AppTheme.listTheme.textTheme.displaySmall) ,
          SizedBox(height: 30.h,),
          DefaultTextFormField(title: "Email / phone number", validator: validation.email, controller: emailController,),
          DefaultTextFormField(title: "Password", validator: validation.password, controller: passwordController,),
          SizedBox(height: 10.h,),
          Row(children: [
            Checkbox(value: false, onChanged: (v){}  ,
            ),
            Text("Save me" ,style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: Color(0XFF4D5364))) ,
            Spacer(),
            Text("Forget password?",style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: AppTheme.buttonColor)) ,
          ],) ,
          SizedBox(height: 20.h,),

          DefaultButton(title:"Log In ",

            onPressed: login,) ,

          Row(
            children: [
              Text("Don’t Have An Account? ",style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: Color(0XFF4D5364))),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              }, child: Text("Sign Up",style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: AppTheme.buttonColor)))
            ],
          ) ,
         SizedBox(height: 4.h,),
          Image.asset("assets/image/login.png") ,

        ],),
      ),
    );
  }
  void login(){
    if(formKey.currentState!.validate()){

    }
  }


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }




}