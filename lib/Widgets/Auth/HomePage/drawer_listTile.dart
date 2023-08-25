import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  final IconData iconName;
  final String tileTitle;
  DrawerListTile({required this.iconName, required this.tileTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  iconName,
                  color: Color(0xff00D7CC),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tileTitle,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xff2a3d66),
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
