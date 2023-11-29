import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/homepage.dart';
import 'package:tiktok_clone/screens/signup_page.dart';

class ValidationPage extends StatefulWidget {
  const ValidationPage({super.key});

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  @override
  Widget build(BuildContext context) {
    // streambuilder ->
    // check if user is authenticated
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // snapshot has data or not
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return const SignUp();
        }
      },
    );
  }
}
