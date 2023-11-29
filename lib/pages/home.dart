import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/colors.dart';
import 'package:tiktok_clone/posts/post.dart';
import 'package:tiktok_clone/posts/post_2.dart';
import 'package:tiktok_clone/posts/posts_3.dart';

class userhomepage extends StatefulWidget {
  const userhomepage({super.key});

  @override
  State<userhomepage> createState() => _userhomepageState();
}

class _userhomepageState extends State<userhomepage> {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Eblack,
      appBar: AppBar(
        backgroundColor: Eblack,
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          post(),
          post_2(),
          post_3(),
        ],
      ),
    );
  }
}
