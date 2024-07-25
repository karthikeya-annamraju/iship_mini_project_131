// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatapp/Pages/LoginPage.dart';
import 'package:chatapp/Pages/Signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../CustomClippers/Custom_clippers.dart';

const colorizeColors = [
  Color(0xFF25333e),
  Color(0xffb5b7cc),
  Color(0xFF3553b0),
];

class LetsConnect extends StatefulWidget {
  const LetsConnect({super.key});

  @override
  State<LetsConnect> createState() => _LetsConnectState();
}

class _LetsConnectState extends State<LetsConnect> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(1),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: devHeight*(1.5/5),
                    width: devWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/images/getstartedc.jpg'), fit: BoxFit.contain)
                    ),
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText("Let's Connect", textStyle: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w900,), colors: colorizeColors, speed: Duration(milliseconds: 150))
                    ],
                  ),
                ],
              ),
              myStack(devHeight, devWidth),
            ],
          ),
        )
    );
  }

  Stack myStack(double devHeight, double devWidth){
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: MyCustomClipperOne(),
            child: Container(
              height: devHeight*(3.25/5),
              width: devWidth,
              color: Color(0xFFf3f4f6),
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: MyCustomClipperTwo(),
            child: Container(
              height: devHeight*(2.65/5),
              width: devWidth,
              color: Color(0xFFeaebef),
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: MyCustomClipperThree(),
            child: Container(
              height: devHeight*(1.95/5),
              width: devWidth,
              color: Color(0xFF0f1f41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: devHeight*(0.4/5),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Container(
                      height: devHeight*(0.33/5),
                      width: devWidth*(2.3/5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(devWidth*(1/5))),
                        color: Color(0xFF3255ed),
                      ),
                      child: Center(child: Text("Log In ", style: GoogleFonts.nunito(color: Colors.white),)),
                    ),
                  ),

                  SizedBox(height: devHeight*(0.13/5),),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: Container(
                      height: devHeight*(0.33/5),
                      width: devWidth*(2.3/5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(devWidth*(1/5))),
                        border: Border.all(width: 3, color: Color(0xFF3255ed),),
                      ),
                      child: Center(child: Text("Sign Up ", style: GoogleFonts.nunito(color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
