import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/appointment.dart';
import 'package:medical/Screens/Views/find_doctor.dart';
import 'package:medical/Screens/Widgets/date_select.dart';
import 'package:medical/Screens/Widgets/doctorList.dart';
import 'package:medical/Screens/Widgets/list_doctor1.dart';
import 'package:medical/Screens/Widgets/time_select.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool showExtendedText = false;

  void toggleTextVisibility() {
    setState(() {
      showExtendedText = !showExtendedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
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
        // ... Your existing code ...

        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
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
                  height: 15,
                ),
                GestureDetector(
                  onTap: toggleTextVisibility,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText
                              ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free lines do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam consectetur adipiscing elit. Sed euismod ..."
                              : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free ... ",
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontSize: 14.sp,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText ? "Read less" : "Read more",
                          style: TextStyle(
                            color: showExtendedText
                                ? Color.fromARGB(255, 1, 128, 111)
                                : Color.fromARGB(255, 1, 128,
                                    111), // Change color based on visibility
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 3,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        date_Select(date: "21", maintext: "Mon"),
                        date_Select(date: "22", maintext: "Tue"),
                        date_Select(date: "23", maintext: "Wed"),
                        date_Select(date: "24", maintext: "Thu"),
                        date_Select(date: "25", maintext: "Fri"),
                        date_Select(date: "26", maintext: "Sat"),
                        date_Select(date: "27", maintext: "Sun"),
                        date_Select(date: "28", maintext: "Mon"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Time select container importing widget from widgets/times_select
                Container(
                  height: MediaQuery.of(context).size.height * 0.2400,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //In main container 2 Columns use
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2900,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              time_select(mainText: "09:00 AM"),
                              time_select(mainText: "01:00 AM"),
                              time_select(mainText: "04:00 AM"),
                              time_select(mainText: "07:00 AM"),
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2500,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              time_select(mainText: "10:00 PM"),
                              time_select(mainText: "02:00 PM"),
                              time_select(mainText: "07:00 PM"),
                              time_select(mainText: "09:00 PM"),
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2500,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              time_select(mainText: "11:00 AM"),
                              time_select(mainText: "03:00 PM"),
                              time_select(mainText: "08:00 PM"),
                              time_select(mainText: "10:00 AM"),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.1300,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 247, 247, 247),
                            borderRadius: BorderRadius.circular(18),
                            image: const DecorationImage(
                                image: AssetImage(
                                  "lib/icons/Chat.png",
                                ),
                                filterQuality: FilterQuality.high)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: appointment()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.6300,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 179, 149),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Book Appointment",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
