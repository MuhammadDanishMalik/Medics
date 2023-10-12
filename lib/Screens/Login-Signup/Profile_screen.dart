import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Widgets/profile_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 226, 215),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("lib/icons/avatar.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("lib/icons/camra.png"))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Amelia Renata",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0400,
                        width: MediaQuery.of(context).size.width * 0.1500,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/icons/callories.png"),
                              filterQuality: FilterQuality.high),
                        ),
                      ),
                      Text(
                        "Calories",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "103lbs",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )
                    ]),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0400,
                        width: MediaQuery.of(context).size.width * 0.1500,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/icons/weight.png"),
                              filterQuality: FilterQuality.high),
                        ),
                      ),
                      Text(
                        "Weight",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "756cal",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )
                    ]),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0900,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0400,
                        width: MediaQuery.of(context).size.width * 0.1500,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/icons/heart.png"),
                              filterQuality: FilterQuality.high),
                        ),
                      ),
                      Text(
                        "Heart rate",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "215bpm",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 550,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                profile_list(
                  image: "lib/icons/heart2.png",
                  title: "My Saved",
                  color: Colors.black87,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                profile_list(
                  image: "lib/icons/appoint.png",
                  title: "Appointmnet",
                  color: Colors.black87,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                profile_list(
                  image: "lib/icons/chat.png",
                  title: "FAQs",
                  color: Colors.black87,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                profile_list(
                  image: "lib/icons/pay.png",
                  title: "Payment Method",
                  color: Colors.black87,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                profile_list(
                  image: "lib/icons/logout.png",
                  title: "Log out",
                  color: Colors.red,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
