import 'package:flutter/material.dart';

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
                  height: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 30,
                    )
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
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              // image: DecorationImage(
                              //     image: NetworkImage(leading1[index % 10]),
                              //     fit: BoxFit.cover)
                            ),
                          ),
                          Center(
                            child: Text(
                              'Steven Smith',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Active now',
                              style: TextStyle(color: Colors.grey),
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
                      width: 40,
                    ),
                    Text(
                      "Total Connected",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Recently connected',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "250+",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 20),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Text(
                      '85',
                      style: TextStyle(
                        color: Color(0xFFf55260),
                        fontSize: 20,
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
                      "Phone Number",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "+91 9596237879",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Change Number",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Email addresses",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "suchandra@gmail.com",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Change email",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Account Status",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    subtitle: Text(
                      "Active",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: Text(
                      "Deactive",
                      style: TextStyle(color: Color(0xFFf55260), fontSize: 15),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: width * (0.04)),
                      child: Text(
                        "Shared Context",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16),
                      )),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
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
                                    BorderRadius.all(Radius.circular(15)),
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
