import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/screens/PaymentDashboard.dart';
import 'package:flutter_ui_challenge/UI/Challenge1/screens/AccountDetails.dart';
import 'package:flutter_ui_challenge/UI/Challenge2/screens/clock.dart';
import 'package:flutter_ui_challenge/UI/HomePage.dart';

import 'UI/Challenge3/screens/Account.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/challenge0': (context) => PaymentDashboard(),
        '/challenge1': (context) => AccountDetails(),
        '/challenge2': (context) => Clock(),
        '/challenge3': (context) => Account(),
      },
    );
  }
}