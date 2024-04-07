import 'package:flutter/material.dart';
import 'package:whatsapp/communities.dart';
import 'package:whatsapp/dashboard.dart';
import 'package:whatsapp/updates.dart';
import 'package:flutter/cupertino.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<String> userName = [
    "Tushar bhardwaj",
    "Tech bliss",
    "CSE 2023-24",
    "Prerit 2",
    "Rohan",
    "Vansh aryan",
    "Manjul",
    "Himanshu uncle",
    "Satyam",
    "The Souled store",
    "Dushar",
    "Aayush airtel ",
    "Sarthak ",
    "Robin 2",
    "Vira college",
    "Didi",
    "Narendra",
    "GYM",
    "Ujjwal choudhary",
    "Shubham rana",
    "Ritesh",
  ];
  List<String> time = [
    "21:26",
    "21:01",
    "19:54",
    "16:48",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "02/04/24",
    "02/04/24",
    "02/04/24",
    "01/04/24",
    "01/04/24",
    "01/04/24",
    "31/03/24",
    "31/03/24",
    "31/03/24",
    "30/03/24",
    "29/03/24",
    "28/03/24"
  ];
  List<String> dp = [
    "assets/images/my.png",
    "assets/images/my6.jpg",
    "assets/images/my3.jpeg",
    "assets/images/my9.png",
    "assets/images/my4.png",
    "assets/images/my5.png",
    "assets/images/my1.jpeg",
    "assets/images/my7.jpeg",
    "assets/images/my8.jpeg",
    "assets/images/my2.jpeg",
    "assets/images/my10.jpeg",
    "assets/images/my11.jpeg",
    "assets/images/my12.jpeg",
    "assets/images/my13.jpeg",
    "assets/images/my14.jpeg",
    "assets/images/my15.jpeg",
    "assets/images/my16.jpeg",
    "assets/images/my4.png",
    "assets/images/my3.png",
    "assets/images/my2.jpeg",
    "assets/images/my1.jpg",
  ];
  List<IconData> icons = [
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_down_left,
    CupertinoIcons.arrow_up_right,
    CupertinoIcons.arrow_down_left,
  ];
  List<IconData> icons1 = [
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.videocam_rounded,
    Icons.videocam_rounded,
    Icons.call,
    Icons.videocam_rounded,
    Icons.call,
    Icons.call,
    Icons.videocam_rounded,
    Icons.videocam_rounded,
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.videocam_rounded,
    Icons.videocam_rounded,
    Icons.call, Icons.call, Icons.call, Icons.call, Icons.call
  ];
  List<MaterialColor> color = [
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.red,
    Colors.red,
  ];
  List<MaterialColor?> color1 = [
    Colors.red,
    Colors.red,
    null,
    Colors.red,
    Colors.red,
   null,
    Colors.red,
    null,
    null,
    null,
    null,
    Colors.red,
    Colors.red,
    null,
    Colors.red,
    Colors.red,
    null, null,
    Colors.red,
    Colors.red,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Whatsapp",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal
              ),),
            Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.camera)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ])
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 14),
              child: Container(
                height: 60,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.teal.shade700,
                      radius: 25,
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.link),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Create call link",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("Share a link for your whatsapp call",
                                  style: TextStyle(
                                      fontSize: 14,
                                    color: Colors.black54
                                  ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Recent",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17
                ),)
              ],
            ),
            SizedBox(
              height: 14,
            ),
            ...List.generate(userName.length, (index) => Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 12),
              child: Container(
                height: 60,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Image(
                        image: AssetImage("assets/images/my.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Container(
                        width: 290,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(userName[index],
                                style: TextStyle(
                                  fontSize: 17,
                                  color: color1[index]
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(icons[index],size: 18,color: color[index]),
                                Text(time[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(icons1[index],color: Colors.teal.shade600,))
                  ],
                ),
              ),
            )
            )],
        ),
      ),
    );
  }
}
