import 'package:flutter/material.dart';
import 'package:portfolio/screens/auth/auth.dart';

class BottomNav extends StatelessWidget {
  final Map _primarySwatch;
  BottomNav(this._primarySwatch);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 64.0,
      decoration: BoxDecoration(color: _primarySwatch[100]),
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 100.0,
              decoration: BoxDecoration(color: _primarySwatch[100]),
              child: new ListView(scrollDirection: Axis.horizontal, children: [
                Card(
                  elevation: 0.0,
                  color: _primarySwatch[100],
                  child: new Container(
                      width: 60.0,
                      height: 60.0,
                      alignment:  Alignment.topCenter,
                      child: IconButton(
                        iconSize: 60.0,
                        icon: Icon(
                          Icons.attachment,
                          size: 60.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("hi");
                          Navigator.push(context,showModalBottomSheet(context: context,
    builder: (BuildContext context) {
    return new Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    new ListTile(
    leading: new Icon(Icons.music_note),
    title: new Text('Music'),
    onTap: () => ...,
    ),
    new ListTile(
    leading: new Icon(Icons.photo_album),
    title: new Text('Photos'),
    onTap: () => ...,
    ),
    new ListTile(
    leading: new Icon(Icons.videocam),
    title: new Text('Video'),
    onTap: () => ...,
    ),
    ],
    );
    });
    }););
                        },
                        tooltip: "Attachments",
                        alignment: Alignment.topCenter,
                      )),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
