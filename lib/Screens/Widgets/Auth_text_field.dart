import 'package:flutter/material.dart';

class Auth_text_field extends StatelessWidget {
  final String text;
  final String icon;

  Auth_text_field({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.9,
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
                  child: Image.asset(icon),
                ),
              ),
              prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
              label: Text(text),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}
