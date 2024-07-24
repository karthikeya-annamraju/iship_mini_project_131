// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:chat_app/pages/get_started.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                height: height,
                width: width / 2,
                color: Colors.white,
              ),
              Container(
                height: height,
                width: width / 2,
                color: Color(0xFF191D3D),
              )
            ],
          ),
          Container(
            width: width,
            height: height * (3 / 6),
            decoration: BoxDecoration(
                color: Color(0xFF191D3D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),

                    SizedBox(
                      width: 115,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        Icons.edit_note_rounded,
                        color: Colors.white,
                        size: 29,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * (1.5 / 6),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.all(10),
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              // image: DecorationImage(
                              //     image: NetworkImage(leading1[index % 10]),
                              //     fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Text(
                              'Steven Smith',
                              style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Active now',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "Total Connected",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Recently connected',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "250+",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Text(
                      '85',
                      style: TextStyle(
                        color: Color(0xFFf55260),
                        fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: height * (3 / 6),
            child: Container(
              width: width,
              height: height * (3.2 / 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(90),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * (0.05),
                  ),
                  ListTile(
                    title: Text(
                      " Phone Number",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "  +91 9596237879",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Change number",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      " Email addresses",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "   hi.stevesmith.com",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Change email",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      " Account Status",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "   SActive",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Deactivate",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.only(left: width * (0.04)),
                      child: Text(
                        "Shared Content",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16),
                      )),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      // itemCount: 10,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                                // image: DecorationImage(
                                //     image: NetworkImage(leading1[index % 10]),
                                //     fit: BoxFit.cover)
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 1,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
