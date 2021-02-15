
import 'package:flutter/material.dart';

class ListProduk extends StatefulWidget {

  @override
  _ListProdukState createState() => _ListProdukState();

}

class _ListProdukState extends State<ListProduk> {

  List<int> daftar_angka = [
    1,
    2,
    3
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("List Angka"),
      ),
      body: ListView.builder(
          itemCount: daftar_angka.length,
          itemBuilder: (BuildContext ctx, idx) {
            int angka = daftar_angka[idx];

            return Container(
              padding: EdgeInsets.all(10), // dpi
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1)
                  )
              ),
              child: Text("${angka}"),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: () {
          setState(() {
            daftar_angka.add(4);
          });
        },
      ),
    );

  }



}