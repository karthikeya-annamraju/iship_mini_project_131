// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatapp/Chatapplication/Chat.dart';
import 'package:chatapp/Components/TextField.dart';
import 'package:chatapp/Components/TopCircleText.dart';
import 'package:chatapp/Profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../CustomClippers/Custom_clippers.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void Login(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
  }

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: MyTopClipper(),
            child: Container(
              height: devWidth*(2.4/5),
              width: devWidth*(3/5),
              color: Color(0xFF3255ed),
              child: TopCircle(str : "Log In "),
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
                    color: Color(0xFFeaebef),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                  child: ClipPath(
                    clipper: MyCustomClipperThree(),
                    child: Container(
                      height: devHeight*(3/5),
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
                            child: MyTextField(obsureText: false, controller: emailController,)
                          ),

                          SizedBox(height: devHeight*(0.13/5),),
                          Align(
                              alignment: Alignment(-0.8,0),
                              child: Text("Password", style: GoogleFonts.nunito(color: Colors.white),)),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: MyTextField(obsureText: true, controller: passwordController,),
                            ),

                          SizedBox(height: devHeight*(0.2/5),),

                         GestureDetector(
                           onTap: () => Login(context),
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
                    ],
                   )
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
