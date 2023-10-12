import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Login-Signup/login.dart';
import 'package:medical/Screens/Login-Signup/login_signup.dart';
import 'package:medical/Screens/Widgets/Auth_text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("lib/icons/back2.png")),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight, child: login()));
          },
        ),
        title: Text(
          "Sign up",
          style: GoogleFonts.inter(
              color: Colors.black87,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.none,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusColor: Colors.black26,
                    fillColor: Color.fromARGB(255, 247, 247, 247),
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Container(
                        child: Image.asset("lib/icons/person.png"),
                      ),
                    ),
                    prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                    label: Text(
                      "Enter your email",
                      style: GoogleFonts.poppins(fontSize: 15.sp),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Auth_text_field(text: "Enter your name", icon: "lib/icons/email.png"),
          const SizedBox(
            height: 5,
          ),
          Auth_text_field(
              text: "Enter your password", icon: "lib/icons/lock.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              Text(
                "I agree to the terms and conditions",
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                // Perform verification or other actions here
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 3, 190, 150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Create account",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style:
                    GoogleFonts.poppins(fontSize: 14.sp, color: Colors.black87),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: login()));
                },
                child: Text(
                  "Sign in",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: const Color.fromARGB(255, 3, 190, 150),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
