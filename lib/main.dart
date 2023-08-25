import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Views/Auth/forget_password.dart';
import 'Views/Auth/login.dart';
import 'Views/Auth/register.dart';
import 'Views/HomePage/dashbooard.dart';
import 'Views/HomePage/homePage.dart';
import 'Views/Invitation/accept_invite.dart';
import 'Views/Invitation/invite_friend.dart';
import 'Views/Profile/profile_setup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
