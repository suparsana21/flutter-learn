
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/index.dart';
import 'package:flutter_app/models/node.dart';
import 'package:flutter_app/views/account.dart';
import 'package:flutter_app/widget/item_widget.dart';
import 'package:http/http.dart' as http;

import 'detail.dart';

class News extends StatefulWidget {

  @override
  _NewsState createState() => _NewsState();

}

class _NewsState extends State<News> {

  bool isLoading = true;
  List<Node> nodes = [];

  var client = http.Client();



  getData() async {

    var request = await client.get("https://dtpeduli.org/news_data_json");

    print(request.body);


    NewsResponse response = NewsResponse.fromJson(json.decode(request.body));

    setState(() {
      isLoading = false;
      nodes = response.news;
    });

  }

  /**
   * if ( loading ) {
   *   tampil progress indikator
   * } else {
   *   if (ada berita) {
   *    tampil list berita
   *   } else {
   *    tampil pesan "Berita Kosong"
   *   }
   * }
   */

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita"),
      ),
      body: Container(
        child:
        isLoading ? Center(
          child: CircularProgressIndicator(),
        ) : nodes.length > 0 ? ListView.builder(
            itemCount: nodes.length,
            itemBuilder: (BuildContext ctx, idx) {

              Node item = nodes[idx];

              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Detail(id: item.node.nid, title: item.node.title, date: item.node.created,)));
                },
                child: ItemWidget(
                    img: item.node.fieldImageNews.src,
                    judul: item.node.title,
                    deskripsi: item.node.created
                ),
              );
            }
        ) : Center(
          child: Text("Tidak ada berita"),
        ),
      ),

    );
  }

}