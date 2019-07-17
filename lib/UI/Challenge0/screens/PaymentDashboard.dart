import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/payment_card.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/resources/database.dart'
    as db;
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/PaymentCardWidgets.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/SendMoneyWidget.dart';

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
        children: <Widget>[_buildCardsWidgets(), SendMoneyWidget()],
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget _buildCardsWidgets() {
  var cards = db.getCards();
  return Container(
    height: 250.0,
    margin: EdgeInsets.only(left: 4.0),
    child: ListView.builder(
      itemBuilder: (context, index){
        PaymentCard paymentCard = cards[index];
        Color color=index%2==0?Colors.white:Theme.of(context).primaryColor;
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(onTap: (){print('Clicked on card $index');}, child: PaymentCardWidget(paymentCard,themedColor: color,collapsed: true,),),
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


