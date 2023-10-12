import 'package:flutter/material.dart';
import 'package:medical/Screens/Login-Signup/Profile_screen.dart';
import 'package:medical/Screens/Views/Dashboard_screen.dart';
import 'package:medical/Screens/Views/Homepage.dart';
import 'package:medical/Screens/Views/Screen1.dart';
import 'package:medical/Screens/Views/appointment.dart';
import 'package:medical/Screens/Views/chat_screen.dart';
import 'package:medical/Screens/Views/doctor_search.dart';
import 'package:medical/Screens/Widgets/TabbarPages/message_tab_all.dart';
import 'package:medical/Screens/Widgets/TabbarPages/tab1.dart';
import 'package:medical/Screens/Widgets/article.dart';
import 'package:medical/Screens/Login-Signup/forgot_pass.dart';
import 'package:medical/Screens/Login-Signup/login.dart';
import 'package:medical/Screens/Login-Signup/login_signup.dart';
import 'package:medical/Screens/On_Board/on_boarding.dart';
import 'package:medical/Screens/Login-Signup/register.dart';
import 'package:medical/Screens/Login-Signup/verification_code.dart';
import 'package:medical/Screens/Views/articlePage.dart';
import 'package:medical/Screens/Widgets/doctorList.dart';
import 'package:medical/Screens/Login-Signup/shedule_screen.dart';
import 'package:medical/Screens/Views/message_Screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:medical/Screens/Views/find_doctor.dart';
import 'package:medical/Screens/Views/doctor_details_screen.dart';

void main() {
  runApp(const Medics());
}

class Medics extends StatelessWidget {
  const Medics({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen1(),
      );
    });
  }
}
