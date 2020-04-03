import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PostingGridTile extends StatefulWidget {
  @override
  _PostingGridTileState createState() => _PostingGridTileState();
}

class _PostingGridTileState extends State<PostingGridTile> {
  String imageurl =
      'https://www.crismatec.com/python/ho/pretty-house-design-inside-simple-home-style-room-ideas_home-elements-and-style.jpg';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              imageurl,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2.2,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 6),
                    AutoSizeText(
                      'Apartment-Vancoub',
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6),
                    AutoSizeText('Awesome Apartment'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(width: 6),
                    AutoSizeText('\$120 / night'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
