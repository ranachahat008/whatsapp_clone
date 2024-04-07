
import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/communities.dart';
import 'package:whatsapp/dashboard.dart';
import 'package:whatsapp/updates.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController _pageController = PageController();
  int selectedPage = 0;
  @override
  // void initState(){
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DashBoard()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: buildPageView(context),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        selectedItemColor: Colors.teal.shade700,
        currentIndex: selectedPage,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () { },
                icon: Icon(Icons.chat),),
              label: "Chats"
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.update_sharp),),
              label: "Updates"
          ),
          BottomNavigationBarItem(
              icon:IconButton(
                onPressed: () {},
                icon: Icon(Icons.people_alt_outlined),),
              label: "Communities"
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.call_outlined),),
              label: "Calls"
          ),
        ],
      ),
    );
  }

  Widget buildPageView(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index){
        onPageChange(index);
      },
      children: [
        Builder(
          builder: (context) => Center(
            child: DashBoard(),
          ),
        ),
        Builder(
          builder: (context) => Center(
            child: Updates(),
          ),
        ),
        Builder(
          builder: (context) => Center(
            child: Communities(),
          ),
        ),Builder(
          builder: (context) => Center(
            child: Calls(),
          ),
        ),
      ],
    );
  }
  onPageChange(int index){
    setState(() {
      selectedPage = index;
    });
  }

  void onTapped(int index) {
    setState(() {
      selectedPage = index;
    });
    _pageController.jumpToPage(index);
  }
}
