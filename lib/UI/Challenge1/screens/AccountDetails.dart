import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/PaymentCardWidgets.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/resources/database.dart'
    as db;

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    var account = db.getCards()[0];
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        elevation: 0.0,
        title: Text(
          'Account Details',
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
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PaymentCardWidget(account,themedColor: Colors.white,
                collapsed: false,),)
        ),
    );
  }
}