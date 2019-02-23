import 'package:flutter/material.dart';
import 'package:portfolio/services/url_launcher.dart';
import 'package:portfolio/util/const_values.dart';

class ProfileHead extends StatefulWidget {
  final colorSwatch;
  ProfileHead(this.colorSwatch);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileHeadState();
  }
}

class _ProfileHeadState extends State<ProfileHead> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160.0,
      alignment: Alignment.centerLeft,
      decoration: new BoxDecoration(
          image: new DecorationImage(
              fit: BoxFit.scaleDown,
              image: new AssetImage(
                "assets/back_image2.png",
              ),
              repeat: ImageRepeat.repeat),
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            widget.colorSwatch[100],
            widget.colorSwatch[200],
            widget.colorSwatch[400],
            widget.colorSwatch[500],
            widget.colorSwatch[700],
            Colors.white70
          ])),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: Border(
                    left: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                        style: BorderStyle.solid),
                    top: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                        style: BorderStyle.solid)),
                image: new DecorationImage(
                  image: new AssetImage("assets/IMG_20180901_044352.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(10.0),
              width: 140.0,
              height: 140.0,
              margin: EdgeInsets.all(10.0),
            ),
            Expanded(
                child: Column(children: <Widget>[
              Text(
                "Dhruv Agarwal",
                style: TextStyle(
                    color: widget.colorSwatch[50],
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Product Developer at ERP-KIET",
                style: TextStyle(
                    color: widget.colorSwatch[50],
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500),
              ),
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: [
                  ActionChip(
                      backgroundColor: Colors.white,
                      avatar: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/IMG_20180901_044352.jpg'),
                      ),
                      onPressed: () => urlLauncher('https://www.facebook.com'),
                      label: Text(
                        'Facebook',
                        style: TextStyle(
                            color: widget.colorSwatch[100],
                            fontWeight: FontWeight.w600),
                      )),ActionChip(
                      backgroundColor: Colors.white,
                      avatar: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/IMG_20180901_044352.jpg'),
                      ),
                      onPressed: () => urlLauncher('www.facebook.com'),
                      label: Text(
                        'Facebook',
                        style: TextStyle(
                            color: widget.colorSwatch[100],
                            fontWeight: FontWeight.w600),
                      )),ActionChip(
                      backgroundColor: Colors.white,
                      avatar: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/IMG_20180901_044352.jpg'),
                      ),
                      onPressed: () => urlLauncher('www.facebook.com'),
                      label: Text(
                        'Facebook',
                        style: TextStyle(
                            color: widget.colorSwatch[100],
                            fontWeight: FontWeight.w600),
                      )),ActionChip(
                      backgroundColor: Colors.white,
                      avatar: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/IMG_20180901_044352.jpg'),
                      ),
                      onPressed: () => urlLauncher('www.facebook.com'),
                      label: Text(
                        'Facebook',
                        style: TextStyle(
                            color: widget.colorSwatch[100],
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ])),
          ],
        ),
      ]),
    );
  }
}
