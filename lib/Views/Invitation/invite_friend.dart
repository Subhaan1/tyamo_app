import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Invitation/accept_invite.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

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
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: AcceptInvite(),
                        type: PageTransitionType.rightToLeft));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.person_outlined,
                  color: Colors.black,
                  size: 25,
                ),
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
            color: Color.fromRGBO(0, 215, 204, 1),
            width: double.infinity,
            height: 50,
            child: Text(
              "Find your Friends",
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 20),
                        hintText: "Hi, How are you?",
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          letterSpacing: 1,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff00D7CC),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                height: 80,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
                          child: Container(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/Me.jpeg",
                              ),
                              radius: 22,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "@Submatic",
                                style: GoogleFonts.poppins(fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                "Subhan Khan",
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GFButton(
                                color: Color(0xff00D7CC),
                                shape: GFButtonShape.pills,
                                child: const Text("Accept"),
                                onPressed: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GFButton(
                                color: Color.fromARGB(255, 215, 0, 18),
                                shape: GFButtonShape.pills,
                                child: const Text("Decline"),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 250,
            width: 400,
            child: Image.asset(
              "assets/images/friend.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Search for your friend on Tyamo or invite your friend to Tyamo",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xff00D7CC)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0))),
            ),
            onPressed: () {},
            child: Text(
              "Invite a Friend",
              style: GoogleFonts.poppins(),
            ),
          )
        ],
      ),
    );
  }
}
