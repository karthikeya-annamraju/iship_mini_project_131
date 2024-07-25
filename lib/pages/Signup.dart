
// ignore_for_file: prefer_const_constructors

import 'package:chatapp/Components/TextField.dart';
import 'package:chatapp/Components/TopCircleText.dart';
import 'package:chatapp/Profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Chatapplication/Chat.dart';
import '../CustomClippers/Custom_clippers.dart';
import 'LoginPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final finalPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
          ClipPath(
          clipper:
          MyTopClipper(),
          child: Container(
            height: devWidth*(2.4/5),
            width: devWidth*(3/5),
            color: Color(0xFF3255ed),
            child: TopCircle(str: "Sign Up"),
      ),
    ),

        Stack(
        children: [
        Positioned(
        bottom: 0,
        child: ClipPath(
        clipper: MyCustomClipperOne(),
        child: Container(
        height: devHeight*(4/5),
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
            height: devHeight*(3.5/5),
            width: devWidth,
            color: Color(0xFF101e41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: devHeight*(0.5/5),),


                SizedBox(height: devHeight*(0.13/5),),
                Align(
                    alignment: Alignment(-0.8,0),
                    child: Text("Email", style: GoogleFonts.nunito(color: Colors.white),)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: MyTextField(obsureText: false, controller: emailController,),
                ),

                SizedBox(height: devHeight*(0.13/5),),
                Align(
                    alignment: Alignment(-0.8,0),
                    child: Text("Password", style: GoogleFonts.nunito(color: Colors.white),)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: MyTextField(obsureText: true, controller: passwordController,),
                ),

                SizedBox(height: devHeight*(0.13/5),),
                Align(
                    alignment: Alignment(-0.75,0),
                    child: Text("Confirm password", style: GoogleFonts.nunito(color: Colors.white),)),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: MyTextField(obsureText: true,controller: finalPasswordController,),
                ),

                SizedBox(height: devHeight*(0.2/5),),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
                  },
                  child: Container(
                    height: devHeight*(0.33/5),
                    width: devWidth*(2.3/5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(devWidth*(1/5))),
                      color: Color(0xFF3255ed),
                    ),
                    child: Center(child: Text("Sign up", style: GoogleFonts.nunito(color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]
      )
    ])
    );
  }
}
