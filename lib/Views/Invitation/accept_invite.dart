import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

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
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
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
              "See Recieved Invitations",
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
            height: 40,
          ),
          Container(
            height: 400,
            width: 400,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/invite1.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your received invitations are currently ",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              Text(
                "Empty",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
