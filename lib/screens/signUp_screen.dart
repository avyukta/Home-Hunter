import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = '/Sign-UpSignUpen';
  SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
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
                Text(
                  'Please submit your details below.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Form(
                      child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'First name'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Last name'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'City'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Country'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Bio'),
                        style: TextStyle(fontSize: 20),
                        maxLines: 3,
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
