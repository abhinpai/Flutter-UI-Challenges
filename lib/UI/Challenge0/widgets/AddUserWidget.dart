import 'package:flutter/material.dart';

class AddUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12.0),
      height: 105.0,
      width: 105.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
              color: Colors.grey, width: 0.5, style: BorderStyle.solid)),
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.purple,
              size: 34.0,
            ),
            onPressed: () => {print('Add button pressed')},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Add User',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
