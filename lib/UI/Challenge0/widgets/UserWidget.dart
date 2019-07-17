import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/user.dart';

class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget(this.user, {Key key})
      : assert(user != null),
        super(key: key);
        

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 100.0,
        width: 100.0,
        // color: Colors.blueAccent,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                color: Colors.pink.shade100,
                blurRadius: 20.0,
                spreadRadius: 0.5,
                offset: Offset(0.0, 0.0)),
            BoxShadow(
                color: Colors.white, blurRadius: 20.0, spreadRadius: 10.5),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(user.avatar),
              backgroundColor: Color(0xfff1f3f5),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                user.name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
