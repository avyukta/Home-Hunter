import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/login-screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 60, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome to ${AppConstants.appName}!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Form(
                    child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Username/email'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                  ],
                )),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text('Login'),
              ),
              FlatButton(onPressed: () {}, child: Text('Forgot Password?'))
            ],
          ),
        ),
      ),
    );
  }
}
