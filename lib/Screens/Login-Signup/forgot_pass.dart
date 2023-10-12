import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Widgets/TabbarPages/tab1.dart';
import 'package:medical/Screens/Widgets/TabbarPages/tab2.dart';
import 'package:medical/Screens/Login-Signup/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class forgot_pass extends StatefulWidget {
  const forgot_pass({Key? key}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<forgot_pass>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("lib/icons/back2.png")),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.topToBottom, child: login()));
          },
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your email or your phone number, we\nwill send you confirmation code",
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        // height: 50,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 235, 235, 235)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                indicatorColor:
                                    const Color.fromARGB(255, 241, 241, 241),
                                unselectedLabelColor: Colors.grey,
                                labelColor:
                                    const Color.fromARGB(255, 3, 190, 150),
                                controller: tabController,
                                tabs: [
                                  Tab(
                                    text: "Email",
                                  ),
                                  Tab(
                                    text: "Phone",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: TabBarView(
                            controller: tabController,
                            children: [tab1(), tab2()]))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
