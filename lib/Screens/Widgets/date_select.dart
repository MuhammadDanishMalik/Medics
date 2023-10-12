import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class date_Select extends StatefulWidget {
  final String maintext;
  final String date;

  date_Select({required this.date, required this.maintext});

  @override
  _date_SelectState createState() => _date_SelectState();
}

class _date_SelectState extends State<date_Select> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSelection,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.02,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 2, 179, 149)
                : Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.black12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.maintext,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: isSelected ? Colors.white : Colors.black54,
                  ),
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    color: isSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 27, 27, 27),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
