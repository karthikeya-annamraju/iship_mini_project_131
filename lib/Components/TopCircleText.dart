
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCircle extends StatelessWidget {
  final String str;
  const TopCircle({super.key, required this.str});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
              Text("Back", style: GoogleFonts.nunito(color: Colors.white, fontWeight: FontWeight.w800),)
            ],
          ),


           Padding(
             padding: str == "Log In"? EdgeInsets.only(left: 20):EdgeInsets.only(left: 15),
             child: Row(
               children: [
                 Text(str, style: GoogleFonts.nunito(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),),
               ],
             ),
           )


        ],
      ),
    );
  }
}
