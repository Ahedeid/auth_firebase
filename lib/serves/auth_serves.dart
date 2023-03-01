

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServes{
 signInWithGoogle() async {
   final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

   final GoogleSignInAuthentication gAuth = await gUser!.authentication;

   final credential = GoogleAuthProvider.credential(
     accessToken: gAuth.accessToken,
     idToken: gAuth.idToken
   );

   return await FirebaseAuth.instance.signInWithCredential(credential);

 }



 // Future<UserCredential> signInWithFacebook() async {
 //   // Trigger the sign-in flow
 //   final LoginResult loginResult = await FacebookAuth.instance.login();
 //
 //   // Create a credential from the access token
 //   final OAuthCredential facebookAuthCredential =
 //   FacebookAuthProvider.credential(loginResult.accessToken!.token);
 //
 //   // Once signed in, return the UserCredential
 //   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
 // }

}