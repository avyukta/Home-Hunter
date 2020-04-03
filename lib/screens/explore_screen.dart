import 'package:flutter/material.dart';
import 'package:home_hunter/widgets/gridWidget.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          // TextField(
          //   decoration: InputDecoration(
          //       hintText: 'Search',
          //       prefixIcon: Icon(Icons.search),
          //       border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(50),
          //           borderSide: BorderSide(color: Colors.grey, width: 1))),
          // ),
          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            controller: ScrollController(
                initialScrollOffset: 1, keepScrollOffset: true),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return PostingGridTile();
            },
            itemCount: 5,
          )
        ],
      ),
    );
  }
}
