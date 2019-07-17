import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/payment.dart';

class ListItemWidget extends StatefulWidget {
  final Payment payment;

  const ListItemWidget(
    this.payment, {
    Key key,
  }) : super(key: key);

  @override
  _ListItemWidgetState createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    Payment payment = widget.payment;
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular((8.0))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                payment.partyPic,
                width: 50.0,
                height: 50.0,
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(payment.partyName,
                style: TextStyle(
                    inherit: true,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0)),
            Text("${payment.type > 0 ? "+" : "-"} \$${payment.amount}",
                style: TextStyle(
                    inherit: true,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0)),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(payment.category,
                  style: TextStyle(
                      inherit: true, fontSize: 14.0, color: Colors.black45)),
              Text("${payment.time}",
                  style: TextStyle(
                      inherit: true, fontSize: 14.0, color: Colors.black45)),
            ],
          ),
        ),
      ),
    );
  }
}
