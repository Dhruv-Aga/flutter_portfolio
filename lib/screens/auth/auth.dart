import 'package:flutter/material.dart';
import 'package:portfolio/screens/auth/widgets/facebook_button/index.dart';
import 'package:portfolio/screens/auth/widgets/google_button/index.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // 1
        appBar: new AppBar(
          //2
          title: new Text("Auth"),
        ),
        body: new Container(
            // decoration: new BoxDecoration(color: Colors.white),
            child: new Center(
                child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GoogleButton(),
            new Padding(
                padding: new EdgeInsets.all(8.0), child: new FacebookButton())
          ],
        ))));
  }
}
