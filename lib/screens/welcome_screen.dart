import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';
import 'package:home_hunter/screens/login_screen.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.hotel,
              size: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Welcome to ${AppConstants.appName}!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
