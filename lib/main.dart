import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/screens/PaymentDashboard.dart';
import 'package:flutter_ui_challenge/UI/HomePage.dart';

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
        '/challenge0': (context) => PaymentDashboard()
      },
    );
  }
}