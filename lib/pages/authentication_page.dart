import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

//auth services

class Authentication {
  Future googleSignIn() async {
    //report exceptions
    try {
      //start sign in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      if (gUser == null) {
        throw Exception('Google Sign In was aborted.');
      }

      //obtain authentication details from request
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
}
