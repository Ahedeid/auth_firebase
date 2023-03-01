import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../component/customButton.dart';
import '../component/custom_text_feild.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({
    super.key,
  });

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Icon(
                Icons.assignment_ind_rounded,
                size: 100,
              ),
              const SizedBox(height: 30),
              Text(
                'Welcome to ReSet Your Password Screen',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 40),
              MyButton(
                onTap: () {
                  try {
                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: emailController.text)
                        .then((value) => Navigator.pop(context));
                  } on FirebaseAuthException catch (e) {
                    print(e);
                  }
                },
                name: 'ReSet Password',
              ),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
