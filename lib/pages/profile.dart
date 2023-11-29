import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/colors.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: Ewhite,
        appBar: AppBar(
          backgroundColor: Ewhite,
          actions: const [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
