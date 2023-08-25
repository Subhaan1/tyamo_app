import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/login.dart';

import '../../Widgets/Auth/auth_heading.dart';
import '../../Widgets/Auth/auth_text_field.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            AuthHeading(
              mainText: "Sign up to Tyamo",
              subText: "Get connected with \n your partner",
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
              height: 20,
            ),
            AuthTextField(
                labelText: "Confirm Password",
                obscureText: true,
                keyboardType: TextInputType.text,
                icon: Icons.lock_reset,
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
                controller: _registerbtnController,
                onPressed: () {},
                child: Text(
                  'Register',
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
              child: Text(
                "By registering, you agree to our terms and condition",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: const Color(0xff808080),
                    letterSpacing: 0.5),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Register?",
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
                            type: PageTransitionType.fade, child: Login()));
                  },
                  child: Text(
                    "Sign in",
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
    );
  }
}
