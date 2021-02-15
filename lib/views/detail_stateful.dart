

import 'package:flutter/material.dart';

class DetailStateful extends StatefulWidget{
  String message;

  DetailStateful({
    this.message
  });

  @override
  _DetailStatefulState createState() => _DetailStatefulState();

}

class _DetailStatefulState extends State<DetailStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Pesan Detail Halaman ${widget.message}"),
          )
        ],
      ),
    );
  }
}