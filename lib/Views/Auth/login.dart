import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/forget_password.dart';
import 'package:tyamo/Views/Auth/register.dart';

import '../../Widgets/Auth/auth_heading.dart';
import '../../Widgets/Auth/auth_text_field.dart';
import '../Profile/profile_setup.dart';

class Login extends StatelessWidget {
  // const Login({super.key});
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign in to Tyamo",
                subText: "To connect with \n your partner",
                fontSize: 18,
              ),
              const SizedBox(height: 50),
              AuthTextField(
                  labelText: "Email",
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.alternate_email,
                  size: 15),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                  labelText: "Password",
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  icon: Icons.password,
                  size: 15),
              const SizedBox(
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  width: 2000,
                  color: Color(0xff00C1AA),
                  controller: _loginbtnController,
                  onPressed: () {
                    Timer(const Duration(seconds: 3), () {
                      _loginbtnController.success();
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: ProfileSetUp(),
                              type: PageTransitionType.fade));
                    });
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: ForgetPassword()));
                  },
                  child: Text(
                    "Forget Password?",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: const Color(0xffC1272D),
                        letterSpacing: 0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color(0xff5A5B5B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Register()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color(0xff2F76EA),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
