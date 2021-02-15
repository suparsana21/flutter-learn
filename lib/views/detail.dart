
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  String message;

  Detail({
    this.message
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Pesan Detail Halaman $message"),
          )
        ],
      ),
    );
  }

}