import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/HistoryWidget.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/SendMoneyWidget.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/buildCardWidget.dart';

class PaymentDashboard extends StatefulWidget {
  @override
  _PaymentDashboardState createState() => _PaymentDashboardState();
}

class _PaymentDashboardState extends State<PaymentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        elevation: 0.0,
        title: Text(
          'Home',
          style: TextStyle(inherit: true, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {print('Search Pressed')},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[BuildCardWidget(), SendMoneyWidget(), Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: HistoryWidget(),
            )],
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }


}
