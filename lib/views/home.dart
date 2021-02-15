
import 'package:flutter/material.dart';
import 'package:flutter_app/views/detail.dart';
import 'package:flutter_app/views/detail_stateful.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();


}

class _HomeState extends State<Home> {

  String message = "World";
  int number = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Hello $message "),
          ),
          Container(
            child: RaisedButton(
              child: Text("Ke Halaman Detail"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailStateful(message: message,)));
              },
            ),
          ),
        ],
      ),

    );

  }

}