// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
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
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(devWidth*(2/5)),),
                color: Colors.grey.shade300,
                  image: DecorationImage(image: AssetImage('assets/images/reg.jpeg'), fit: BoxFit.cover)
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
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
                        "Sign up", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.8), fontSize: devHeight*(0.21/5), fontWeight: FontWeight.w400),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(20),
                      child: TextField(
                        cursorHeight: 20,
                        cursorWidth: 1,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            hintText: "User Id",
                            hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500)
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                      child: TextField(
                        cursorHeight: 20,
                        cursorWidth: 1,
                        cursorColor: Colors.white,
                        obscureText: true,
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
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextField(
                        obscureText: true,
                        cursorHeight: 20,
                        cursorWidth: 1,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          hintText: "Confirm password",
                          hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500),
                        ),
                      ),
                    ),


                    SizedBox(height: devHeight*(0.21/5),),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          height: devHeight*(0.34/5),
                          width: devWidth*(2.4/5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFFf55260),
                          ),
                          child: Center(
                            child: Text("Sign up", style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(1)),),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: devHeight*(0.15/5),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already a member? ", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.7)),),
                        GestureDetector(
                            onTap : widget.onTap,
                            child: Text("Sign In", style: GoogleFonts.roboto(color: Colors.white.withOpacity(0.9)),))
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

