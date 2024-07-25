
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Status extends StatefulWidget {
  final String myChar;
  final String myCharImg;
  final Color myImage;
  Status({super.key, required this.myCharImg, required this.myChar, required this.myImage});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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

  var icons = [
    Icon(
      Icons.phone_forwarded_outlined,
      color: Color.fromARGB(255, 219, 192, 21),
    ),
    Icon(
      Icons.phone_missed_outlined,
      color: Colors.red,
    ),
    Icon(Icons.phone_callback_outlined, color: Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.all(25),
      child: Container(
        height: devHeight*(3.8/5),
        width: devWidth,
        decoration: BoxDecoration(
          color: Color(0xFFedf1fd),
          //border: Border.all(width: 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: devHeight*(0.07/5),),
            Text("My Status", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
            SizedBox(height: devHeight*(0.05/5),),
            ListTile(
              title: Text(widget.myChar, style: GoogleFonts.nunito(color: Colors.black,fontWeight: FontWeight.w700, fontSize: 18),),
              subtitle: Text("Tap to add Status"),
              leading: Container(
                width: devWidth * (0.15),
                height: devHeight * (0.18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: widget.myImage,
                  image: DecorationImage(image: AssetImage(widget.myCharImg),fit: BoxFit.contain),
                ),
              ),
              trailing: Text("1:45"),
            ),
            SizedBox(height: devHeight*(0.05/5),),
            Text("Friends", style: GoogleFonts.nunito(color: Colors.grey.shade700, fontWeight: FontWeight.w500, fontSize: 20),),
            Container(
              height: devHeight*(2.5/5),
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
            )
          ],

        ),
      ),
    );
  }
}
