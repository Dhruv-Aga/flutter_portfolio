import 'package:flutter/material.dart';
import 'package:portfolio/services/palette_generator.dart';
import 'package:portfolio/services/primary_color.dart';
import 'package:portfolio/util/const_values.dart';
import 'package:portfolio/widgets/app_bar/app_bar.dart';
import 'package:portfolio/widgets/drawer/drawer.dart';

class MyApp extends StatefulWidget {
  Map<int, Color> _primarySwatch;
  Color selectedColor;

  MyApp() {
    _primarySwatch = mixPalette(defaultColor);
    selectedColor = primaryColorGetter(_primarySwatch);
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static String _headerName = "Dhruv Agarwal";

//  Map<int, Color> _primarySwatch;
  @override
  Widget build(BuildContext context) {
    print("hi build");

    return MaterialApp(
      theme: ThemeData(primaryColor: widget.selectedColor.withAlpha(255)),
      home: Scaffold(
        appBar: AppBar(
            title: Text(_headerName),
            actions: <Widget>[AppHeader(_mySetState, widget.selectedColor)]),
        drawer: DrawerComponent(),
        body: MainBody(colorSwatch: widget._primarySwatch),
        bottomNavigationBar: Container(
          height: 60.0,
          decoration: BoxDecoration(color: widget._primarySwatch[500]),
          child: new Center(
            child: new ListView(
              children: <Widget>[
                new Container(
                  height: 80.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(0.0),
                    children: new List.generate(5, (int index) {
                      return new Card(
                        elevation: 2.0,
                        color: widget._primarySwatch[800],
                        child: new Container(
                          width: 80.0,
                          height: 80.0,
                          child: new Text(
                            "$index",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          padding: EdgeInsets.all(0.0),
        ),
      ),
      title: 'Portfolio',
    );
  }

  void _mySetState(color) {
    setState(() {
      defaultColor = color;
      widget._primarySwatch = mixPalette(color);
      widget.selectedColor = color;
    });
  }
}

class MainBody extends StatefulWidget {
  final Map<int, Color> colorSwatch;

  @override
  MainBody({Key key, @required this.colorSwatch}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainBodyState();
  }
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(children: <Widget>[
        SizedBox(
          child: Container(
            height: 160.0,
            alignment: Alignment.centerLeft,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(
                      "assets/back_image2.png",
                    ),
                    repeat: ImageRepeat.repeatX),
                gradient: LinearGradient(
                    colors: [widget.colorSwatch[100], Colors.white70])),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                            image: new AssetImage(
                                "assets/IMG_20180901_044352.jpg"),
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
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                        Text("Dhruv Agarwal"),
                        Text("Dhruv Agarwal"),
                        Wrap(
                          spacing: 8.0, // gap between adjacent chips
                          runSpacing: 4.0, // gap between lines
                          children: <Widget>[
                            Chip(
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.blue.shade900,
                                  child: Text(
                                    'AH',
                                  )),
                              label: Text('Hamilton'),
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.blue.shade900,
                                  child: Text('ML')),
                              label: Text('Lafayette'),
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.blue.shade900,
                                  child: Text('HM')),
                              label: Text('Mulligan'),
                            ),
                            Chip(
                              avatar: CircleAvatar(
                                  backgroundColor: Colors.blue.shade900,
                                  child: Text('JL')),
                              label: Text('Laurens'),
                            ),
                          ],
                        ),
                      ])),
                    ],
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
