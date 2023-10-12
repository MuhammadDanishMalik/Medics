import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/doctor_details_screen.dart';
import 'package:medical/Screens/Views/find_doctor.dart';
import 'package:medical/Screens/Widgets/doctorList.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class appointment extends StatelessWidget {
  const appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: DoctorDetails()));
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/icons/back1.png"),
            )),
          ),
        ),
        title: Text(
          "Top Doctors",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("lib/icons/more.png"),
              )),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              doctorList(
                distance: "800m away",
                image: "lib/icons/male-doctor.png",
                maintext: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist",
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "Change",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                          color: const Color.fromARGB(137, 56, 56, 56)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.1300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                            image: AssetImage(
                              "lib/icons/callender.png",
                            ),
                            filterQuality: FilterQuality.high,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Wednesday, Jun 23, 2021 | 10:00 AM",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reasion",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "Change",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                          color: const Color.fromARGB(137, 56, 56, 56)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.1300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                            image: AssetImage(
                              "lib/icons/pencil.png",
                            ),
                            filterQuality: FilterQuality.high,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chest pain",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Payment Details",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Consultation",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, color: Colors.black54),
                    ),
                    Text(
                      "\$60",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Admin Fee",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, color: Colors.black54),
                    ),
                    Text(
                      "\$01.00",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Aditional Discount",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, color: Colors.black54),
                    ),
                    Text(
                      "-",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$61.00",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 4, 92, 58),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Payment Method"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Visa",
                          style: GoogleFonts.inter(
                              fontStyle: FontStyle.italic,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 38, 39, 117)),
                        ),
                        Text(
                          "Change",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: const Color.fromARGB(137, 56, 56, 56)),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.2100,
                          decoration: BoxDecoration(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Total",
                                  style: GoogleFonts.inter(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0,
                                      color: const Color.fromARGB(
                                          137, 56, 56, 56)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "  \$61",
                                  style: GoogleFonts.inter(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0,
                                      color: Colors.black87),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.4300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 2, 179, 149),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Book",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
