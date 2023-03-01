import 'package:firebase_auth_test/screens/auth_screen.dart';
import 'package:firebase_auth_test/screens/signup_screen.dart';
import 'package:flutter/material.dart';



class LoginOrSignUpScreen extends StatefulWidget {
  const LoginOrSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUpScreen> createState() => _LoginOrSignUpScreenState();
}

class _LoginOrSignUpScreenState extends State<LoginOrSignUpScreen> {
  bool showLoginScreen = true ;
  void toggelScreen(){
    setState(() {
      showLoginScreen = !showLoginScreen ;
    });
  }
  @override
  Widget build(BuildContext context) {
  if(showLoginScreen){
    return AuthScreen(onTab: toggelScreen);
  }else{
    return SignUpScreen(onTab:toggelScreen,);
  }
  }
}
