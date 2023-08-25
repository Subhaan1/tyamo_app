import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Widgets/Auth/auth_text_field.dart';

class ForgetPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgetPasswordbtnController =
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
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Forget your Password?",
                subText: "",
                fontSize: 18,
              ),
              Container(
                height: 230,
                width: 230,
                child: Image.asset("assets/images/forgot_password.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "To request for a new one, type your email address below.A link to reset the password will be sent to that email.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.alternate_email,
                  labelText: "Email",
                  size: 18),
              const SizedBox(
                height: 20,
              ),
              RoundedLoadingButton(
                width: 2000,
                color: Color(0xff00C1AA),
                controller: _forgetPasswordbtnController,
                onPressed: () {},
                child: Text(
                  'Send',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
