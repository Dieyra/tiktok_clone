import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiktok_clone/constants/colors.dart';
import 'package:tiktok_clone/pages/authentication_page.dart';
import 'package:tiktok_clone/homepage.dart';
import 'package:tiktok_clone/screens/login_page.dart';
import 'package:tiktok_clone/screens/signup_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Scaffold(
        backgroundColor: Ewhite,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            icon: Icon(
              Icons.cancel_rounded,
              size: 30,
              color: Colors.grey.shade500,
            ),
          ),
          backgroundColor: Ewhite,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.question_mark_rounded,
                  color: Colors.grey.shade500,
                  size: 30,
                ),
              ],
            )
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Center(
                  child: Text(
                    'Log in toTikTok',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Eblack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Manage your account ,check notifications,comments on videos,and more',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: 350,
                  color: Etransparent,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/user-icon.svg",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          "Use phone/email/username",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: 350,
                  color: Etransparent,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/fb.svg",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          "Continue with facebook",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: 350,
                  color: Etransparent,
                  child: ElevatedButton(
                    onPressed: () {
                      Authentication().googleSignIn();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/google-icon.svg",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          "Continue with google",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: 350,
                  color: Etransparent,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/twitter-icon.svg",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          "Continue with Twitter",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   height: 55,
                //   width: 350,
                //   color: Etransparent,
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.transparent,
                //         elevation: 0,
                //         shape: RoundedRectangleBorder(
                //           side: const BorderSide(
                //             color: Color.fromARGB(255, 199, 199, 199),
                //           ),
                //           borderRadius: BorderRadius.circular(10),
                //         )),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         SvgPicture.asset(
                //           "assets/images/instagram-icon.svg",
                //           width: 30,
                //           height: 30,
                //         ),
                //         Text(
                //           "Continue with Instagram",
                //           style: TextStyle(
                //             color: Colors.grey.shade900,
                //             fontSize: 16,
                //             fontWeight: FontWeight.w800,
                //           ),
                //         ),
                //         SizedBox(
                //           width: MediaQuery.of(context).size.width * 0.08,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "By continuing, you agree to our terms of service and acknowledge that you have read our privacy policy to learn how we collect, use, and share your data",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do not have an account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUp();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Ered,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
