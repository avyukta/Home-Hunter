import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  final String title;
  final IconData iconData;
  final int index;
  Item({this.title, this.iconData, this.index});
}

List<Item> items = <Item>[
  Item(title: 'Explore', iconData: Icons.search, index: 0),
  Item(title: 'Saved', iconData: Icons.favorite_border, index: 1),
  Item(title: 'Trips', iconData: Icons.hotel, index: 2),
  Item(title: 'Inbox', iconData: Icons.message, index: 3),
  Item(title: 'Profile', iconData: Icons.person_outline, index: 4),
];
