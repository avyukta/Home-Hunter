import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget listItems(String title, IconData iconData) {
    return MaterialButton(
      height: MediaQuery.of(context).size.height / 10,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Icon(iconData),
        title: Text(title),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 15),
          child: MaterialButton(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: MediaQuery.of(context).size.width / 8.4,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    radius: MediaQuery.of(context).size.width / 9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        'John Doe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      AutoSizeText(
                        'johndoe@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(top: 25, left: 15),
            children: <Widget>[
              listItems('Personal Information', Icons.person),
              listItems('Become a Host', Icons.hotel),
              listItems('Logout', Icons.exit_to_app),
            ],
          ),
        )
      ],
    );
  }
}
