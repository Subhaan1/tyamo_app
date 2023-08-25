import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Widgets/Auth/auth_text_field.dart';

import '../../Provider/Get/ProfileSetupController/sex_Controller.dart';

class ProfileSetUp extends StatefulWidget {
  @override
  State<ProfileSetUp> createState() => _ProfileSetUpState();
}

class _ProfileSetUpState extends State<ProfileSetUp> {
  final RoundedLoadingButtonController _profileSetupButtonController =
      RoundedLoadingButtonController();

  final ProfileSetupController SexController =
      Get.put(ProfileSetupController());

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 35,
            child: Image.asset(
              "assets/images/tux.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.person_outlined,
                color: Colors.black,
                size: 25,
              ),
            )
          ],
        ),
        preferredSize: const Size.fromHeight(50),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xff00D7CC),
            width: double.infinity,
            height: 50,
            child: Text(
              "Profile Setup",
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AuthTextField(
              obscureText: false,
              keyboardType: TextInputType.name,
              icon: Icons.data_usage_rounded,
              labelText: "Your name",
              size: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AuthTextField(
              obscureText: false,
              keyboardType: TextInputType.name,
              icon: Icons.alternate_email,
              labelText: "Your username",
              size: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  SexController.setMale(true);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: SexController.isMale ? Colors.amber : Colors.cyan,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1.0, 9.0),
                        blurRadius: 30,
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   isMale = false;
                  // });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1.0, 9.0),
                        blurRadius: 30,
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.female,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _profileSetupButtonController,
                  color: const Color(0xff00C1AA),
                  onPressed: () {
                    Timer(const Duration(seconds: 3), () {
                      _profileSetupButtonController.success();
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: const InviteFriend(),
                              type: PageTransitionType.fade));
                    });
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
