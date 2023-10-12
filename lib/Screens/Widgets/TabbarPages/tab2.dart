import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class tab2 extends StatelessWidget {
  const tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
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
                      child: Image.asset("lib/icons/lock.png"),
                    ),
                  ),
                  prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                  label: Text("Enter your password"),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 01,
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
              "Reset Password",
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
      ]),
    );
  }
}
