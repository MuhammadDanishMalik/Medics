import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class chat_info extends StatelessWidget {
  const chat_info({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Consultion Start",
            style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 131, 113)),
          ),
          Text(
            "You can consult your problem to the doctor",
            style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 136, 136, 136)),
          )
        ]),
      ),
    );
  }
}
