import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.hotel,
              size: 80,
            ),
            Text(
              '${AppConstants.appName}!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
