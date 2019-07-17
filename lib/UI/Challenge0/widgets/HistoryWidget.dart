import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/ListItemWidget.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/resources/database.dart'
    as db;

class HistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 22.0,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.grey,
                ))
          ],
        ),
        Container(
          color: Colors.white,
          child: ListView.builder(
            itemBuilder: (context, index) {
              print(db.getPayments()[index]);
              return ListItemWidget(db.getPayments()[index]);
            },
            shrinkWrap: true,
            // physics: ClampingScrollPhysics(),
            itemCount: db.getPayments().length,
          ),
        )
      ],
    );
  }
}
