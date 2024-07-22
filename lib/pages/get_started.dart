// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    Color color1 = Color(0xFF191D3D);
    Color color2 = Color(0xFFf55260);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.white,
                    )),
                Expanded(
                    child: Container(
                      color: Color(0xFF191D3D),
                    ))
              ],
            ),

            Column(
              children: [
                Container(
                  height: deviceHeight*(2.9/5),
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(deviceWidth*(1.2/5))),
                    image: DecorationImage(image: AssetImage('assets/images/get_started_1.png'), fit: BoxFit.contain)
                  ),
                ),

                Container(
                  height: deviceHeight*(2.1/5.0),
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(deviceWidth*(1.2/5))),
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      Text(" Let's connect\nwith each other", style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight : FontWeight.bold,
                        fontSize: 30
                      ),),
                      SizedBox(height: 15,),
                      Text("A message is a discrete communication\n  intended"
                          "by the source of consumption.", style: GoogleFonts.roboto(
                        color: Color(0xFF9ea3b8),
                      ),),
                      SizedBox(height: 23,),

                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 65,
                          width: 180,
                          decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Let's Start", style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_rounded, color: Colors.white,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
