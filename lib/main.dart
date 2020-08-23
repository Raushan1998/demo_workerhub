// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Job details';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const listTile = const ListTile(
      //leading: Icon(Icons.album),
      leading: Text("Ends in   "),

      //TODO:set logo of company
      title: Text('Project Name'),
      subtitle: Text('Company Name'),
      trailing: Icon(
        Icons.share,
      ),
    );
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
            side: BorderSide(width: 1, color: Colors.black)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            listTile,

            // ignore: deprecated_member_use
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    child: const Text('View Benifits'),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Apply Now'),
                    color: Colors.lightGreen,
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
