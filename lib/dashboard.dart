
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/communities.dart';
import 'package:whatsapp/settings.dart';
import 'package:whatsapp/updates.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
  List<String> title = [
    "thk hai",
    "Mohit Lpu: https://meet.google.com/..",
    "HOD: Submit original document today..",
    "m km kr lu",
    "College kb jayega",
    "19 wala recharge kriye",
    "kitni der me ayega",
    "hello",
    "aaja market chlre",
    "your order no. 389846383 is deli...",
    "ok",
    "cricket khelenge",
    "ghr hu",
    "2 unit krle",
    "yash: chemistry notes",
    "bhj diye",
    "call kr liye",
    "manjul: aaj back",
    "ok done",
    "ha",
    "college hu"
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: double.maxFinite,
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
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred device")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));},
                        child: Text("Settings",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),),)
                  )
                ]), ]),
          ],
        ),
      ),
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
          ...List.generate(userName.length, (index) => Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
               margin: EdgeInsets.only(bottom: 8),
               height: 70,
               width: double.maxFinite,
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 27,
                     child: Image(
                       image: AssetImage("assets/images/my.png"),fit: BoxFit.fill,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 70,
                       margin: EdgeInsets.only(left: 10),
                       child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                               Container(
                                 width: 300,
                                 height: 32,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(userName[index],
                                     style: TextStyle(
                                       fontWeight: FontWeight.w600,
                                       fontSize: 20
                                     ),),
                                     // SizedBox(),
                                     Text(time[index])
                                   ],
                                 ),
                               ),
                             ],),
                           Text(title[index])
                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),
          ))
         ],
       ),
     ),
    );
  }
}
