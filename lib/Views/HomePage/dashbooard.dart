// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.center,
//           child: Text(
//             "DASHBOARD",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.nunito(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w900,
//                 fontSize: 22,
//                 letterSpacing: 1),
//           ),
//         )
//       ],
//     );
//   }
// }
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homePage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.search,
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBottomNavigationBar Example'),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          Center(child: Text('Search Page')),
          Center(child: Text('User Profile Page')),
        ],
      ),
    );
  }
}
