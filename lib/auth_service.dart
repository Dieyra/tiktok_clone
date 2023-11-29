import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _gSign = GoogleSignIn();
  //Google Sign in
  signInWithGoogle() async {
    try {
      //begin interactive sign in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      if (gUser == null) {
        throw Exception('Google Sign In was aborted.');
      }

      //obtain auth details from request
      final GoogleSignInAuthentication gAuth = await gUser.authentication;

      //create a new credential for user
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      //finally, lets sign in
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print('Sign in with Google failed: $e');
      return null;
    }
  }

  //sign out

  void signOutUser() async {
    await _auth.signOut();
    await _gSign.signOut();
  }

  // sign up with email and password
  Future signUp(
      TextEditingController email, TextEditingController password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text.trim(),
      password: password.text.trim(),
    );
  }

  //sign in with  email and password
  Future signIn(
      TextEditingController username, TextEditingController password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: username.text.trim(),
      password: password.text.trim(),
    );
  }
}
