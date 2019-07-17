import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/payment_card.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/resources/database.dart'
    as db;
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/PaymentCardWidgets.dart';

class BuildCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cards = db.getCards();
    return Container(
      height: 250.0,
      margin: EdgeInsets.only(left: 4.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          PaymentCard paymentCard = cards[index];
          Color color =
              index % 2 == 0 ? Colors.white : Theme.of(context).primaryColor;
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                print('Clicked on card $index');
              },
              child: PaymentCardWidget(
                paymentCard,
                themedColor: color,
                collapsed: true,
              ),
            ),
          );
        },
        itemCount: cards.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}