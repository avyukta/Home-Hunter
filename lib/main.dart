import 'package:flutter/material.dart';
import 'package:home_hunter/screens/guest_home_screen.dart';
import 'package:home_hunter/screens/login_screen.dart';
import 'package:home_hunter/screens/personalInfo_screen.dart';
import 'package:home_hunter/screens/settings_screen.dart';
import 'package:home_hunter/screens/signUp_screen.dart';
import 'package:home_hunter/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        GuestHomePage.routeName: (ctx) => GuestHomePage(),
        PersonalInfoScreen.routeName: (ctx) => PersonalInfoScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
      },
    );
  }
}
