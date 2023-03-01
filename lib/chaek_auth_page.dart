import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'check_login_or_signup.dart';
import 'screens/home_screen.dart';





class CheckAuthPage extends StatelessWidget {
  const CheckAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          // snapShot.hasData

          if (snapshot.data != null) {
            return HomePage();
          }
          else {
            return const LoginOrSignUpScreen();
          }
        },
      ),
    );
  }
}