import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ])
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 250,
                  width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/main.jpeg")
                  )
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Stay connected with a community",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500
          ),)
        ],),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Communities bring members together in ",
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("topic-based groups, and make it easy to get",
                      style: TextStyle(
                          fontSize: 15))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("admin announcements. Any community you're",
                      style: TextStyle(
                          fontSize: 15))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("added to will appear here",
                      style: TextStyle(
                          fontSize: 15))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(onPressed: (){},
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text("See example communities",
               style: TextStyle(
                 color: Colors.teal.shade800
               ),),
               Icon(CupertinoIcons.arrow_right,color: Colors.teal.shade800,)
            ],
          )),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (){},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.teal.shade800,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text("Start your community",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16
              ),),
            ),
          )
        ],
      ),

    );
  }
}
