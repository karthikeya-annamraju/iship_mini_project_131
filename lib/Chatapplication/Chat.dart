// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/Chatapplication/chats.dart';
import 'package:chat_app/Profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Calls.dart';
import 'Status.dart';

class Chat extends StatefulWidget {
  final String myCharName;
  final String myCharImage;
  final Color myImageBackGround;
  Chat({super.key, required this.myCharImage, required this.myCharName, required this.myImageBackGround});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<IconData> myIcons = [Icons.mark_email_read_outlined, Icons.camera_alt_outlined, Icons.phone_enabled_outlined];
  late List<dynamic> myChatsStatusCalls;
  int optind = 0;
  String selector = "Chats";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.myCharName;
    myChatsStatusCalls = [Chats(), Status(myCharImg: widget.myCharImage, myChar: widget.myCharName, myImage: widget.myImageBackGround), Calls()];
  }

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          MySplitScreen(devHeight, devWidth),
          // Chating Space..

      Column(
        children: [
          SizedBox(
            height: devHeight*(1.2/5),
            width: devWidth,
          ),

          Container(
            height: devHeight*(3.8/5),
            width: devWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
              color: Color(0xFFedf1fd),
            ),
            child: myChatsStatusCalls[optind],
            //myChatsStatusCalls[optind],
          ),
        ],
      ),
          //Chating Space End
          Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: devHeight*(1.2/5),
                  width: devWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: Color(0xFF191D3D),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: devHeight*(0.15/5),),
                      Container(
                        height: devHeight*(0.3/5),
                        width: devWidth*(4.5/5),
                        decoration: BoxDecoration(
                        //color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
                                },
                                child: Icon(Icons.menu, color: Colors.white.withOpacity(0.8), size: 35,
                                )
                            ),
                            Text("Convo", style: GoogleFonts.nunito(color: Colors.white, fontSize: 25),),
                            GestureDetector(child: Icon(Icons.search_rounded, color: Colors.white.withOpacity(0.8),size: 25,)),
                          ],
                        ),
                      ),

                      SizedBox(height: devHeight*(0.15/5),),
                      Container(
                        height: devHeight*(0.4/5),
                        width: devWidth*(3.75/5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: devWidth*(0.2/5),),
                            myOptions("Chats", devHeight, devWidth),
                            SizedBox(width: devWidth*(0.01/5),),
                            myOptions("Status", devHeight, devWidth),
                            SizedBox(width: devWidth*(0.01/5),),
                             myOptions("Calls", devHeight, devWidth),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                  // left: 20,
                  // right: 20,
                  child: Container(
                    clipBehavior: Clip.none,
                    height: devHeight*(0.5/5),
                    width: devWidth*(5/5),
                    decoration: BoxDecoration(
                     color: Color(0xFFeaeefa),
                    ),
                  ),
              ),

              Positioned(
                bottom: devHeight*(0.26/5),
                  right: 10,
                  child: Row(
                    children: [
                      optind == 1?Container(
                        height: devHeight*(0.33/5),
                        width: devWidth*(0.71/5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xFFfa5062),
                        ),
                        child: Center(
                          child: Icon(Icons.brush, color: Colors.white, size: 30,),
                        ),
                      ):SizedBox(width: devWidth*(0.04/5),),

                      SizedBox(width: devWidth*(0.04/5),),
                      Container(
                        height: devHeight*(0.33/5),
                        width: devWidth*(0.71/5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xFFfa5062),
                        ),
                        child: Center(
                          child: Icon(myIcons[optind], color: Colors.white, size: 30,),
                        ),
                      ),
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }

  // Split Screen Functon
  Row MySplitScreen(double devHeight, double devWidth){
    return Row(
      children: [
        Container(height: devHeight, width: devWidth*(1/2),color: Color(0xFFedf1fd),),
        Container(height: devHeight, width: devWidth*(1/2),color: Color(0xFF191D3D),),
      ],
    );
  }


  // Chats Status and Calls fun
  GestureDetector myOptions(String options, double devHeight, devWidth){
    return GestureDetector(
      onTap: (){
        setState(() {
          selector = options;
          if(options == "Chats"){
            optind = 0;
          }
          else if(options == "Status"){
            optind = 1;
          }
          else{
            optind = 2;
          }
        });
      },
      child: Container(
        height: devHeight*(0.25/5),
        width: devWidth*(1.1/5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: selector == options?Color(0xFF191D3D):Colors.transparent,
        ),
        child: Center(
          child: Text(options, style: GoogleFonts.nunito(color: Colors.white, fontSize: 16.5),),
        ),
      ),
    );
  }
}



