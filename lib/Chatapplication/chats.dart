// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> myListOfProfiles = [
  "assets/images/boy1b1.png",
  "assets/images/girl1p1.png",
  "assets/images/boy1b2.png",
  "assets/images/boy1b3.png",
  "assets/images/boy1p1.png",
  "assets/images/girl4b1.png",
  "assets/images/girl2p2.png",
  "assets/images/girl4b2.png",
  "assets/images/boy1p2.png",
  "assets/images/girl5b3.png",
  ];
  List<String> userName = [
    "Joe Root",
    "Navel Joard",
    "James Anderson",
    "Steve Jobs",
    "Will Smith",
    "Gold Smith",
    "Franklin Clinton",
    "Trevor Jones",
    "Taylor Swift",
    "Ariana Grande",
    "Ellie"
    ];
  List<String> userLastMessage = [
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
  List<String> lastTextTime = [
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
  List<Color> myListColors = [
    Color(0xFFB0E0E6), // PowderBlue
    Color(0xFFF5DEB3), // Wheat
    Color(0xFFAFEEEE), // PaleTurquoise
    Color(0xFFFAFAD2), // LightGoldenrodYellow
    Color(0xFFD8BFD8), // Thistle
    Color(0xFF98FB98), // PaleGreen
    Color(0xFFFFD700), // Gold
    Color(0xFFFFA07A), // LightSalmon
    Color(0xFFADD8E6), // LightBlue
    Color(0xFFFFB6C1), // LightPink
    Color(0xFF87CEFA), // LightSkyBlue
    Color(0xFFE6E6FA), // Lavender
  ];


  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Padding(padding: EdgeInsets.all(15),
      child: ListView.separated(itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
          },
          child: ListTile(
            minTileHeight: 50,
            title: Text(userName[index], style: GoogleFonts.nunito(color: Colors.black,fontWeight: FontWeight.w800, fontSize: 18),),
            subtitle: Text(userLastMessage[index]),
            leading: Container(
              width: devWidth * (0.15),
              height: devHeight * (0.18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: myListColors[index],
                image: DecorationImage(image: AssetImage(myListOfProfiles[index]),fit: BoxFit.contain),
              ),
            ),
            trailing: Text(
              lastTextTime[index],
              style: TextStyle(
                   fontWeight: FontWeight.w400),
            ),
          ),
        );
      }, separatorBuilder:(context,index){
        return SizedBox(height: 10,);
      }, itemCount: 10),
    );
  }
}
