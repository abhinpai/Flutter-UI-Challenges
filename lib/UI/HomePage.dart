import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Challenge"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text("Challenge$index UI"),
              onPressed: () {
                Navigator.pushNamed(context, '/challenge$index');
              },
            ),
          );
        },
        itemCount: 4,
        shrinkWrap: true,
      ),
    );
    // return Scaffold();
  }
}
