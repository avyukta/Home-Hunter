import 'package:flutter/material.dart';
import 'package:home_hunter/screens/guest_home_screen.dart';

class PersonalInfoScreen extends StatefulWidget {
  static final routeName = '/Personal-Info-Screen';
  PersonalInfoScreen({Key key}) : super(key: key);

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
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
                        decoration: InputDecoration(labelText: 'First name'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Last name'),
                        style: TextStyle(fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
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
