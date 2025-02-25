// ignore_for_file: prefer_const_constructors

import 'package:chat_app/pages/call_ringing.dart';
import 'package:chat_app/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final void Function()?onTap ;
  const LoginPage({super.key, required this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var names = ["Joe Root",
              "Taylor Swift",
              "Navel Joard",
              "James Anderson",
              "Valkyrie",
              "Steve Jobs",
              "Ariana Grande",
              "Amber Chan",
              "Dua Lipa",
              "Will Smith",
              "Ellie"
            ];

  var messages = [
    "Okay, I'll try. Can you help......",
    "Haha. Really you're a great person",
    "Thanks for your appreciations.",
    "Alright, I'll look into it",
    "Oh ! Is it so ?",
    "See you tomorrow. Bye for now.",
    "Gotta refer ChatGPT to solve that bug.",
    "Hi, I'm at THub, can you please text ?",
    "Okay, let me know if you need help",
    "Are you free to take calls ?",
    "When are we playing?",
    "Bro, Hop on into the game",
  ];

  var time = [
    "2:45",
    "14:15",
    "6:30",
    "9:23",
    "5:36",
    "19:32",
    "14:45",
    "4:15",
    "16:30",
    "20:05",
    "14:49",
  ];

  var avatars = [
    "assets/images/boy1b1.png",
    "assets/images/girl1p1.png",
    "assets/images/boy1b2.png",
    "assets/images/boy1b3.png",
    "assets/images/girl3p3.png",
    "assets/images/boy1p1.png",
    "assets/images/girl4b1.png",
    "assets/images/girl2p2.png",
    "assets/images/girl4b2.png",
    "assets/images/boy1p2.png",
    "assets/images/girl5b3.png",
  ];

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    double paddingBetween = (devWidth*(0.2/5));
    return Scaffold(
      backgroundColor: Color(0xFF191D3D),
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: devHeight*(2/5),
              width: devWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(devWidth*(2/5)),),
                color: Colors.grey.shade300,
                image: DecorationImage(image: AssetImage('assets/images/login.jpeg'), fit: BoxFit.cover)
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                height: devHeight*(2.6/5),
                width:  devWidth*(4/5),
                decoration: BoxDecoration(

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Login", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.8), fontSize: devHeight*(0.21/5), fontWeight: FontWeight.w400),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(20),
                      child: TextField(
                        cursorColor: Colors.white,
                        cursorHeight: 20,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            hintText: "User Id",
                            hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.white,
                        cursorHeight: 20,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "Password",
                          hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),


                    SizedBox(height: devHeight*(0.15/5),),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CallRinging()));
                        },
                        child: Container(
                          height: devHeight*(0.34/5),
                          width: devWidth*(2.4/5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFFf55260),
                          ),
                          child: Center(
                            child: Text("Sign in", style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(1)),),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: devHeight*(0.15/5),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a Member? ", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.7)),),
                        GestureDetector(
                            onTap : widget.onTap,
                            child: Text("Register", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.9)),))
                      ],
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
