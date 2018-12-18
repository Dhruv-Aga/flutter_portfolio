import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerComponentState();
  }
}

class DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text(
                "Yuvraj Pandey",
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: new Text(
                "yuvrajn.pandey@gmail.com",
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
    // TODO: implement build
  }
}
