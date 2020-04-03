import 'package:flutter/material.dart';
import 'package:home_hunter/screens/guest_home_screen.dart';

class SettingsScreen extends StatefulWidget {
  static final routeName = '/Settings-Screen';
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).pushNamed(GuestHomePage.routeName);
              })
        ],
        // title: Text(
        //   'Sign Up',
        //   style: TextStyle(color: Colors.white, fontSize: 18),
        // ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Form(
                      child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'current password'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'new password'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 're enter new password'),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
