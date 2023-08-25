import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Widgets/Auth/HomePage/drawer_listTile.dart';
import 'dashbooard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homePageKey = GlobalKey();
  final _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  final iconList = <IconData>[
    FontAwesomeIcons.personCircleCheck,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
  ];

  // int page = 1;

  // int pageView = 1;

  // PageController pageController = PageController(initialPage: 1);

  // Widget pageViewSection() {
  //   return PageView(
  //     controller: pageController,
  //     onPageChanged: (value) {
  //       setState(() {
  //         page = value;
  //       });
  //     },
  //     children: [
  //       // Dashboard(),
  //       // Dashboard(),
  //       // Dashboard(),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        key: _homePageKey,
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
        leading: GestureDetector(
          onTap: () {
            _homePageKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.message,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        child: CircularProfileAvatar(
                          "",
                          backgroundColor: Colors.cyan,
                          borderWidth: 1,
                          borderColor: Colors.deepPurpleAccent,
                          elevation: 20,
                          radius: 40,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(Icons.face);
                          },
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return Container(
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        ),
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Subhan Khan",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                          Text(
                            "@Submatic",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                                color: Colors.cyan,
                                letterSpacing: 0),
                          ),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Premium",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 0,
              child: Divider(),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                DrawerListTile(
                    iconName: FontAwesomeIcons.solidCreditCard,
                    tileTitle: "Subscription"),
                DrawerListTile(iconName: Icons.settings, tileTitle: "Settings"),
                DrawerListTile(
                    iconName: FontAwesomeIcons.circleQuestion,
                    tileTitle: "Help"),
                DrawerListTile(
                    iconName: FontAwesomeIcons.message, tileTitle: "Feedback"),
                DrawerListTile(
                    iconName: FontAwesomeIcons.share, tileTitle: "Tell others"),
                DrawerListTile(
                    iconName: FontAwesomeIcons.starHalfStroke,
                    tileTitle: "Rate the app"),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Divider(),
                    DrawerListTile(
                        iconName: FontAwesomeIcons.rightFromBracket,
                        tileTitle: "Sign out")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          Center(child: Text('Search Page')),
          Center(child: Text('User Profile Page')),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        // gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        // leftCornerRadius: 20,
        // rightCornerRadius: 20,
        splashColor: Colors.blueAccent,
        splashRadius: 20,
        backgroundColor: Colors.white,
        iconSize: 30,
        activeColor: Colors.blueAccent,
        inactiveColor: Colors.grey,
      ),
    );
  }
}
