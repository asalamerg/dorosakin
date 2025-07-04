
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/shared/widget/default_button.dart';
import 'package:dorosakin/shared/widget/text_form_field.dart';
import 'package:dorosakin/shared/widget/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget{
  static const String routeName="RegisterScreen";

  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  TextEditingController  nameController =TextEditingController();
  TextEditingController  passwordController =TextEditingController();
  TextEditingController  emailController =TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: Column(children: [
          SizedBox(height: 30.h,),

          Image.asset("assets/image/auth_image.png" ,height:  72.h,width:  182.w,fit: BoxFit.fill,) ,
          SizedBox(height: 25.h,),
          Text("New Account",style: AppTheme.listTheme.textTheme.displayMedium) ,
          SizedBox(height: 7.h,),
          Text("Create your account ",style: AppTheme.listTheme.textTheme.displaySmall) ,

          DefaultTextFormField(title: "Name ", validator: validation.name, controller: nameController,),
          DefaultTextFormField(title: "Email / phone number", validator: validation.email, controller: emailController,),
          DefaultTextFormField(title: "Password", validator: validation.password, controller: passwordController,),

          Row(children: [
            Checkbox(value: true, onChanged: (v){}  ,
            ),
            Text("By Signing up, you agree to our ") ,
            Spacer(),
            Text("Term and Conditions",style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: AppTheme.buttonColor)) ,
          ],) ,
          DefaultButton(title:"Sing Up" , onPressed: register,) ,

          Row(
            children: [
              Text("Already have an account.?"),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("Log In",style: AppTheme.listTheme.textTheme.displaySmall?.copyWith(color: AppTheme.buttonColor)))
            ],
          ) ,

          Image.asset("assets/image/login.png") ,

        ],),
      ),
    );
  }
  void register(){
    if(formKey.currentState!.validate()){

    }
  }


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }




}