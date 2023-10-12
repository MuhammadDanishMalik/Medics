import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class listIcons extends StatelessWidget {
  final String Icon;
  final String text;

  listIcons({required this.Icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 1,
                          color: Color.fromARGB(135, 238, 236, 236))
                    ],
                    image: DecorationImage(
                      image: AssetImage(Icon),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: GoogleFonts.inter(fontSize: 15.sp, color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
