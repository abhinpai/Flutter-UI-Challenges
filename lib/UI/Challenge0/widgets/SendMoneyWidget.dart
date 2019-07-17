import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/user.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/resources/database.dart' as db;
import 'package:flutter_ui_challenge/UI/Challenge0/widgets/AddUserWidget.dart';

import 'UserWidget.dart';

class SendMoneyWidget extends StatefulWidget {
  @override
  _SendMoneyWidgetState createState() => _SendMoneyWidgetState();
}

class _SendMoneyWidgetState extends State<SendMoneyWidget> {
  @override
  Widget build(BuildContext context) {
    var users = db.getUsers();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Add new user', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
              IconButton(icon: Icon(Icons.chevron_right),onPressed: (){},)
          ],),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          height: 130.0,
          child: ListView.builder(
            itemBuilder: (context, index){
              if(index == 0){
                return AddUserWidget(); 
              }
              User user = users[index-1];
              print(user);
              return Padding(child: UserWidget(user),padding: const EdgeInsets.all(12.0),);
            },
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: users.length+1,
            scrollDirection: Axis.horizontal,
          )
          ,)

      ],
    );
  }
}