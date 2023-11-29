import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tiktok_clone/constants/colors.dart';
import 'package:tiktok_clone/screens/login.dart';

class SignHere extends StatefulWidget {
  const SignHere({super.key});

  @override
  State<SignHere> createState() => _SignHereState();
}

class _SignHereState extends State<SignHere> {
  bool isPhoneSelected = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Sign up",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.question_mark_rounded,
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Ewhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPhoneSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: isPhoneSelected
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                color: isPhoneSelected
                                    ? Colors.black
                                    : Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPhoneSelected = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              // borderRadius: BorderRadius.circular(10.0),
                              border: Border(
                                bottom: BorderSide(
                                  color: isPhoneSelected
                                      ? Colors.transparent
                                      : Colors.black,
                                  width: 2.0,
                                ),
                              )),
                          child: Center(
                            child: Text(
                              'Email',
                              style: TextStyle(
                                color: isPhoneSelected
                                    ? Colors.grey
                                    : Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 53,
                left: 0,
                right: 0,
                bottom: 0,
                child: Divider(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: isPhoneSelected
                  ? Column(
                      children: [
                        IntlPhoneField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'MW',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                        const Text(
                          'Your phone number will be used to improve your TikTok experience, including connecting you with people you may know,personalizing your ads experience,and more.If you sign up with SMS,fees may apply.Learn More',
                          style: TextStyle(
                            color: Egrey,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.grey.shade300,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Login();
                                  },
                                ),
                              );
                            },
                            child: const Center(
                              child: Text(
                                'Send code',
                                style: TextStyle(
                                  color: Egrey,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        TextField(
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            focusColor: Colors.grey,
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade600,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade600,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                          obscureText: true,
                        ),
                        Text(
                          'By continuing , you agree to TikToksTerms and servicesand comfirm that you have read TikToks PrivacyYour email will be used to improve connectiting you with people you may know and personalizing your ads experince.Learn more',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey.shade900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contextr) {
                                  return const Login();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Egrey,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ),
        ],
      ),
    ));
  }
}
