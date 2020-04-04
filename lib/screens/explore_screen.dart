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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey, width: 1))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PostingGridTile();
              },
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
