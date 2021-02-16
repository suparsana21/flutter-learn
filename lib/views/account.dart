
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text("List 1"),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("List 2"),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("List 3"),
            )
          ]
      ),
    ) ;
    
  }
  
}