import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:home_hunter/screens/login_screen.dart';
import 'package:home_hunter/screens/personalInfo_screen.dart';
import 'package:home_hunter/screens/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget listItems(String title, IconData iconData, String routeNamed) {
    return MaterialButton(
      height: MediaQuery.of(context).size.height / 10,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Icon(iconData),
        title: Text(title),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(routeNamed);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: MediaQuery.of(context).size.width / 8.4,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    radius: MediaQuery.of(context).size.width / 9,
                  ),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(top: 25, left: 15),
            children: <Widget>[
              listItems(
                  'Edit Profile', Icons.person, PersonalInfoScreen.routeName),
              listItems('Settings', Icons.settings, SettingsScreen.routeName),
              listItems('Logout', Icons.exit_to_app, LoginScreen.routeName),
            ],
          ),
        )
      ],
    );
  }
}
