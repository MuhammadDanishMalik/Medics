import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class list_doctor1 extends StatelessWidget {
  final String image;
  final String maintext;
  final String subtext;
  final String numRating;
  final String distance;

  list_doctor1(
      {required this.distance,
      required this.image,
      required this.maintext,
      required this.numRating,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color.fromARGB(134, 228, 227, 227)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                alignment: Alignment.topCenter,
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //Main text
                  Text(
                    maintext,
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  //Sub text
                  Text(
                    subtext,
                    style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //Rating star container start from here!!
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01500,
                        width: MediaQuery.of(context).size.width * 0.08,
                        color: Color.fromARGB(255, 240, 236, 236),
                        child: Row(children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.01500,
                            width: MediaQuery.of(context).size.width * 0.03,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "lib/icons/star.png",
                                    ),
                                    filterQuality: FilterQuality.high)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            numRating,
                            style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                color: Color.fromARGB(255, 4, 179, 120),
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      //Sizebox betwen ratting + distance
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01500,
                        width: MediaQuery.of(context).size.width * 0.03,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "lib/icons/Location.png",
                              ),
                              filterQuality: FilterQuality.high),
                        ),
                      ),
                      Text(
                        distance,
                        style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: Color.fromARGB(255, 133, 133, 133),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
