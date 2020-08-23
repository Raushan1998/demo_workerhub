// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)),
            side: BorderSide(width: 4, color: Colors.yellow)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              //leading: Icon(Icons.album),
              leading:
                  Icon(Icons.location_searching), //TODO:set logo of company
              title: Text('Project Name'),
              subtitle: Text('Company Name'),
            ),
            StepProgressIndicator(
                totalSteps: 4,
                currentStep: 4, //change using case
                size: 20,
                selectedColor: Colors.green,
                customStep: (index, color, _) => color == Colors.green
                    ? Container(
                        color: color,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(Icons.check_circle_outline)),
                      )
                    : Container(
                        color: color,
                        child: Align(
                          alignment: Alignment.centerRight,
                        ))),
            // ignore: deprecated_member_use
            new Container(
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: const Text('Cancel'),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: const Text('Show Details'),
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      onPressed: () {},
                    ),
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
