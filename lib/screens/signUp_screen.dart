import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = '/Sign-UpSignUpen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome to ${AppConstants.appName}!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Form(
                      child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Username/email'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    color: Colors.lightBlueAccent,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 16),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
