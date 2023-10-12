import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/Homepage.dart';
import 'package:medical/Screens/Widgets/Auth_text_field.dart';
import 'package:medical/Screens/Widgets/chat_doctor.dart';
import 'package:medical/Screens/Widgets/chat_info.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class chat_screen extends StatelessWidget {
  const chat_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Leading icon for navigation
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: Homepage()));
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
        // Title of the chat screen
        title: Text(
          "Dr. Marcus Horizon",
          style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17.sp),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // Video call icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("lib/icons/video_call.png"),
                  )),
                ),
                const SizedBox(
                  width: 15,
                ),
                // Call icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("lib/icons/call.png"),
                  )),
                ),
                const SizedBox(
                  width: 15,
                ),
                // More options icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("lib/icons/more.png"),
                  )),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Widget to display chat information
                const chat_info(),
                const SizedBox(
                  height: 30,
                ),
                // Widget to display doctor's information
                const chat_doctor(),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's introductory message
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello. how can i help you?",
                          style: TextStyle(fontSize: 15.sp),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's message
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                // User's message content
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("lib/icons/ticks.png"),
                                      filterQuality: FilterQuality.high)),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Widget to display doctor's information
                const chat_doctor(),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's introductory message
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello. how can i help you?",
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's message
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                // User's message content
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.sp),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("lib/icons/ticks.png"),
                                      filterQuality: FilterQuality.high)),
                            )
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.82,
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
                            height: 10,
                            width: 10,
                            child: Image.asset("lib/icons/pin.png"),
                          ),
                        ),
                        prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                        label: Text("Type message ..."),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
