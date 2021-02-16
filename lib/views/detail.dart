
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/nodeDetail.dart';
import '../models/nodeDetailResponse.dart';

class Detail extends StatefulWidget {

  String id;
  String title;
  String date;

  Detail({
    this.id,this.title, this.date
  });

  @override
  _DetailState createState() => _DetailState();

}

class _DetailState extends State<Detail> {

  var client = http.Client();
  NodeDetail detail;
  bool isLoading = true;
  
  getDataDetail() async {
    
    var request = await http.get("https://dtpeduli.org/json_page/${widget.id}");

    /**
     * {
     *    "name" : "Hendra"
     * }
     *
     * print(responses['name']);
     */

    var responses = json.decode(request.body);



    NodeDetailResponse response = NodeDetailResponse.fromJson((responses[0]));

    setState(() {
      detail = response.node;
      isLoading = false;
    });


  }
  
  @override
  void initState() {
    
    super.initState();
    
    getDataDetail();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: isLoading ? Center(
          child: CircularProgressIndicator(),
        ) : SingleChildScrollView(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(detail.imageNews.src),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(detail.title, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(widget.date, style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(detail.body,textAlign: TextAlign.justify,),
              ),
            ],
          ),
        )


      ),
    );

  }

}