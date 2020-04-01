import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  final String title;
  final IconData iconData;
  final int index;
  Item({this.title, this.iconData, this.index});
}

List<String> listTitles = ['Explore', 'Saved', 'Trips', 'Inbox', 'Profile'];
List<Item> items = <Item>[
  Item(title: listTitles[0], iconData: Icons.search, index: 0),
  Item(title: listTitles[1], iconData: Icons.favorite_border, index: 1),
  Item(title: listTitles[2], iconData: Icons.hotel, index: 2),
  Item(title: listTitles[3], iconData: Icons.message, index: 3),
  Item(title: listTitles[4], iconData: Icons.person_outline, index: 4),
];
