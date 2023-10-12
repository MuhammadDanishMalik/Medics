import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        decoration: BoxDecoration(
          color: Color.fromARGB(153, 236, 232, 232),
          borderRadius: BorderRadius.circular(15),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Early protection for\nyour family health",
                style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.026,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 4, 138, 109),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Learn More",
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp, color: Colors.white),
                  ),
                ]),
              )
            ]),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.3,
              alignment: Alignment.bottomCenter,
              child: Image.asset("lib/icons/female.png"))
        ]),
      ),
    );
  }
}
