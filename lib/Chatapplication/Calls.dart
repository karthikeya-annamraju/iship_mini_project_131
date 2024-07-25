// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
  List<String> myListOfProfiles = [
    "assets/images/boy1b3.png",
    "assets/images/girl1p1.png",
    "assets/images/boy1p2.png",
    "assets/images/girl5b3.png",
    "assets/images/boy1p1.png",
    "assets/images/girl4b1.png",
    "assets/images/girl2p2.png",
    "assets/images/girl4b2.png",
    "assets/images/boy1b2.png",
    "assets/images/boy1p2.png",
    "assets/images/girl4b1.png",
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
  List<String> userLastMessage = [
    "10 minutes ago",
    "22 minutes ago",
    "30 minutes ago",
    "44 minutes ago",
    "1 hour ago",
    "2 hours ago",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
  ];
  List<Icon> myIcons = [Icon(Icons.phone_callback_outlined, color: Colors.blueAccent,), Icon(Icons.phone_disabled_outlined, color: Colors.red.shade300,), Icon(Icons.phone_outlined, color: Colors.orangeAccent,)];
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Padding(padding: EdgeInsets.all(25),
    child: Container(
      height: devHeight*(3/5),
      width: devWidth*(4.8/5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("All calls", style: GoogleFonts.nunito(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w800),),
          Text("Friends", style: GoogleFonts.nunito(color: Colors.grey.shade700, fontWeight: FontWeight.w500, fontSize: 20),),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: devHeight*(3/5),
              width: devWidth*(4.5/5),

              child:  ListView.separated(itemBuilder: (context,index){
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
                    trailing: myIcons[index%3],
                  ),
                );
              }, separatorBuilder:(context,index){
                return SizedBox(height: 10,);
              }, itemCount: 10),
            ),
          )
        ],
      )
    ),
    );
  }
}
