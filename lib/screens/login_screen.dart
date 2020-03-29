import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';
import 'package:home_hunter/screens/guest_home_screen.dart';
import 'package:home_hunter/screens/signUp_screen.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/login-screen';
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _signUp() {
    Navigator.of(context).pushNamed(SignUpScreen.routeName);
  }

  void _login() {
    Navigator.of(context).pushNamed(GuestHomePage.routeName);
  }

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
                        decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Username/email'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock), labelText: 'Password'),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: MaterialButton(
                    onPressed: () {
                      _login();
                    },
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
                  padding: const EdgeInsets.only(top: 15.0),
                  child: MaterialButton(
                    onPressed: () {
                      _signUp();
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    color: Colors.orangeAccent,
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
