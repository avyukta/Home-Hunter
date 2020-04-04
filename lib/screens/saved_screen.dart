import 'package:flutter/material.dart';
import 'package:home_hunter/widgets/gridWidget.dart';

class SavedScreen extends StatefulWidget {
  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          return Stack(
            children: <Widget>[
              PostingGridTile(),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                ),
              )
            ],
          );
        },
        itemCount: 3,
      ),
    );
  }
}
