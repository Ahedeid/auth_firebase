

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
          child: Text(
            'The your Email is  : ${user.email!}',
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}












































// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_test/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//   final bool _isLoading = true;
//   final user = FirebaseAuth.instance.currentUser!;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(title: const Text('My Products')),
//         body: _isLoading
//             ? const Center(child: CircularProgressIndicator())
//             :  Center(
//                 child: Text(
//                   '${user.email}',
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ));
//   }
// }
