
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  String img;
  String judul;
  String deskripsi;

  ItemWidget({
    this.img, this.judul,this.deskripsi
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.network(img,
            width: 70, // dpi
            height: 70,
            fit: BoxFit.cover,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text(judul, style: TextStyle(
                        color: Colors.black,
                        fontSize: 13
                      ),)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 16, top: 8),
                      child: Text(deskripsi, style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 12
                      ),)
                  ),
                ],
              )
          )

        ],
      ),
    );
  }

}