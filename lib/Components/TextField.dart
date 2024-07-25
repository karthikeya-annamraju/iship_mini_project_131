// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final bool obsureText;
  final TextEditingController controller;
  const MyTextField({super.key, required this.obsureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsureText,
      cursorColor: Colors.white,
      cursorHeight: 20,
      cursorWidth: 1,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        border: OutlineInputBorder(
          // borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.15),
        hintText: "Type here",
        hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
