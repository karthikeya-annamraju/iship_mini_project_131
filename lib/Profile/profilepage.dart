// ignore_for_file: prefer_const_constructors

import 'package:iship_mini_project_131/Components/TextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Chatapplication/Chat.dart';
import '../Chatapplication/chats.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {

  List<Color> myColorsList = [
  Color(0xFFF08080), // Light Coral
  Color(0xFF87CEFA), // Light Sky Blue
  Color(0xFF98FB98), // Pale Green
  Color(0xFFFFA07A), // Light Salmon
  Color(0xFF9370DB), // Medium Purple
  Color(0xFFF0E68C), // Khaki
  Color(0xFFFFB6C1), // Light Pink
  Color(0xFFD8BFD8), // Thistle
  Color(0xFFF4A460), // Sandy Brown
  Color(0xFF20B2AA), // Light Sea Green
  Color(0xFFE6E6FA), // Lavender
  ];
  int colInd = 0;

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
  int avatarInd = 0;

  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.8),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat(myCharImage: avatars[avatarInd], myCharName: nameController.text, myImageBackGround: myColorsList[colInd])));
        },
        child: (
        Icon(Icons.download_done, color: Colors.green,)
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,)),
        actions: [
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 40.0, right: 40),
              child: TextField(
                maxLength: 13,
                cursorColor: Colors.black,
                controller: nameController,
                cursorHeight: 20,
                cursorWidth: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(devWidth*(0.2/5))),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),
                  labelText: "Enter Your Name",
                  labelStyle: GoogleFonts.nunito(color: Colors.black),
                  hintText: "Type here",
                  hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500),
                ),

                style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.w700,color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: devWidth*(0.7/5)),
               child:
                 Stack(
                    alignment: Alignment.center,
                    children: [
                      callContainer(devHeight*(3/5), 280, "0xFFefeaf0"),
                      imageContainer(devHeight*(1.3/5), devWidth*(2.6/5)),
        
                     Positioned(
                        bottom: 60,
                         left: 30,
                        child:  Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                         GestureDetector(
                             onTap:(){
                               setState(() {
                                 avatarInd -= 1;
                                 if(avatarInd < 0){
                                   avatarInd = avatars.length-1;
                                 }
                               });
                             },
                             child: Icon(Icons.arrow_back_ios_outlined)),
                         SizedBox(width: devWidth*(0.3/5),),
                         Text("CHANGE AVATAR", style: GoogleFonts.nunito(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),),
                           SizedBox(width: devWidth*(0.3/5),),
                         GestureDetector(
                           onTap:(){
                             setState(() {
                               avatarInd += 1;
                               if(avatarInd > avatars.length-1){
                                 avatarInd = 0;
                               }
                             });
                           },
                           child: Icon(Icons.arrow_forward_ios_rounded),
                         )
                       ],
                     )),
        
                      Positioned(
                         bottom: 10,
                          left: 30,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                 onTap:(){
                                   setState(() {
                                     colInd -= 1;
                                     if(colInd < 0){
                                       colInd = myColorsList.length-1;
                                     }
                                   });
                                 },
                                  child: Icon(Icons.arrow_back_ios_outlined)),
                              SizedBox(width: devWidth*(0.3/5),),
                              Text("CHANGE THEME", style: GoogleFonts.nunito(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),),
                              SizedBox(width: devWidth*(0.36/5),),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    colInd += 1;
                                    if(colInd > myColorsList.length-1){
                                      colInd = 0;
                                    }
                                  });
                                },
                                child: Icon(Icons.arrow_forward_ios_rounded),
                              )
                            ],
                          )),
                ],
            ),
                ),
          ],
        ),
      ),
    );
  }

  Container callContainer(double height, double width, String col) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: myColorsList[colInd],
         ),
     );
  }

  Container imageContainer(double height, double width, ) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: myColorsList[colInd],
        image: DecorationImage(image: AssetImage(avatars[avatarInd])),
      ),
    );
  }
}
