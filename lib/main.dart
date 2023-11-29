import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/firebase_options.dart';
import 'package:tiktok_clone/pages/verifyuser.dart';
//import 'package:tiktok_clone/homepage.dart';
//import 'package:tiktok_clone/screens/signup_page.dart';
//import 'package:tiktok_clone/screens/signhere_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.grey.shade900,
        ),
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 244, 54, 114),
      ),
      home: const ValidationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
