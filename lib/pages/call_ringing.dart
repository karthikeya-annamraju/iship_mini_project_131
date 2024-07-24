// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallRinging extends StatefulWidget {
  const CallRinging({super.key});

  @override
  State<CallRinging> createState() => _CallRingingState();
}

class _CallRingingState extends State<CallRinging> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
          Row(
            children: [
              SizedBox(width: 21,),
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
              ),
              SizedBox(width: 310,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'Item 1',
                    child: Text('Item 1'),),
                ],)
            ],),
          SizedBox(height: 50,),
          Stack(
            alignment: Alignment.center,
            children: [
              callContainer(300, 280, "0xFFefeaf0"),
              callContainer(280, 220, "0xFFf4dbd7"),
              Container(
                height: 300,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(width: 2.5, color: Color(0xFFf8bea6))
                ),
              ),
              callContainer(300, 160, "0xFFf8bea6"),
            ],
          ),
          SizedBox(height: 25,),
          Text("Joe Root", style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 2,),
          Text("Ringing...", style: GoogleFonts.lato(
            fontSize: 17,
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF191d3d)
                  ),
                  child: Icon(Icons.videocam_outlined, color: Colors.white, size: 27,),
                ),
              ),
              SizedBox(width: 25,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFe63030)
                  ),
                  child: Icon(Icons.call_end_outlined, color: Colors.white, size: 27,),
                ),
              ),
              SizedBox(width: 25,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFf65365)
                  ),
                  child: Icon(Icons.mic_none_rounded, color: Colors.white, size: 27,),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
  // Call Avatar Container
  Container callContainer(double height, double width, String col) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(int.parse(col)),
      ),
    );
  }
}
