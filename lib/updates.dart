import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/communities.dart';
import 'package:whatsapp/dashboard.dart';
import 'package:flutter/cupertino.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 26,))
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage("assets/images/my.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("My Status",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21
                            ),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tap to add status update",
                        style: TextStyle(
                            color: Colors.black54
                        ),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Viewed status",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),),
                IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.down_arrow,color: Colors.black54,))
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Channels",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Container(
              child: Text(
                "Stay Updates on topics thats matter to you. Find channels to follow below.",
                style: TextStyle(
                  fontSize:14,
                  color: Colors.black54
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
