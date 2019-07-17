import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/payment_card.dart';

class PaymentCardWidget extends StatelessWidget {
  final PaymentCard card;
  final Color themedColor;
  final bool collapsed;

  const PaymentCardWidget(this.card,
      {Key key, this.themedColor = Colors.white, this.collapsed = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !collapsed ? _buildExpanded(context) : _buildCollapsed(context);
  }

  Widget _buildExpanded(BuildContext context) {
    PaymentCard _card = card;
    Color color = themedColor == Colors.white ? Colors.black : Colors.white;
    double rowWidth=MediaQuery.of(context).size.width*2/3;
    return Container(
      width: MediaQuery.of(context).size.width-10,
      padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0), color: themedColor,  boxShadow: [
          BoxShadow(
              color: Colors.pink.shade100,
              blurRadius: 200.0,
              spreadRadius: 0.1,
              offset: Offset(0.0, 10.0)),
          BoxShadow(color: Colors.white, blurRadius: 300.0, spreadRadius: 10.5)
        ],),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Current Balance',style: Theme.of(context).textTheme.title.copyWith(fontSize: 16.0, color: color),),
              Image.network(card.logo, height: 18.0,fit: BoxFit.fitHeight)
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text("\$34,458,955",  style: Theme.of(context).textTheme.headline.copyWith(
                  color: color, fontWeight: FontWeight.bold, fontSize: 28.0),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(_card.cardNo,  style: Theme.of(context).textTheme.headline.copyWith(
                  color: color.withOpacity(0.3), fontWeight: FontWeight.bold),),
          ),
          Container(margin: EdgeInsets.only(top: 4.0),
            width: rowWidth,
            child: Row(mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Bank Name Placeholder', style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0),),
                      Text(_card.cvv,
                        style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0),
                      )
              ],
            ),
          )

        ],),

      
      );
    

  }

  Widget _buildCollapsed(BuildContext context) {
    PaymentCard _card = card;
    Color color = themedColor == Colors.white ? Colors.black : Colors.white;
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
          decoration: BoxDecoration(
            color: themedColor,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.pink.shade100,
                  blurRadius: 20.0,
                  spreadRadius: 0.5,
                  offset: Offset(0.0, 0.0)),
              BoxShadow(
                  color: Colors.white, blurRadius: 20.0, spreadRadius: 10.5)
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text("\$34,458,955",
                    style: Theme.of(context).textTheme.headline.copyWith(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0)),
              ),
              Text(
                "Access Debit Card",
                style: TextStyle(
                    color: color, fontWeight: FontWeight.w400, fontSize: 18.0),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(_card.cardNo,
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: color.withOpacity(0.3),
                          fontWeight: FontWeight.bold))),
            Container(margin: EdgeInsets.only(top: 4.0),
              child: Row(mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(_card.logo,height:18.0,fit: BoxFit.fitHeight,color:themedColor==Colors.white?null:Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(_card.expiryDate,style: TextStyle(color: color,fontWeight: FontWeight.w400,fontSize: 18.0),),)
              ],),
            )
                          
            ],
          ),
        )
      ],
    );
  }
}
