import 'package:chat_app/pages/LoginPage.dart';
import 'package:chat_app/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool isLoginPage = true;

  void toggle(){
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(isLoginPage){
      return LoginPage(onTap: toggle);
    }
    else{
      return RegisterPage(onTap: toggle);
    }
  }
}
