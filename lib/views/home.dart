
import 'package:flutter/material.dart';

import 'account.dart';
import 'news.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  List<Widget> pages() => [
    News(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages()[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx){
          setState(() {
            currentIndex = idx;
          });
        },
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Page 2"
          ),

        ],
      ),
    );
  }

}