import 'package:flutter/material.dart';

class post_3 extends StatelessWidget {
  const post_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 35,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Icon(
                    Icons.chat_bubble_outline_outlined,
                    size: 35,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Icon(
                    Icons.send,
                    size: 35,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
