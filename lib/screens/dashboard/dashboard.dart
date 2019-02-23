import 'package:flutter/material.dart';
import 'package:portfolio/services/palette_generator.dart';
import 'package:portfolio/services/primary_color.dart';
import 'package:portfolio/util/const_values.dart';
import 'package:portfolio/widgets/app_bar/app_bar.dart';
import 'package:portfolio/widgets/drawer/drawer.dart';
import 'package:portfolio/widgets/profile_head/profile_head.dart';
import 'package:portfolio/widgets/bottom_nav/bottom_nav.dart';

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
    return MaterialApp(
      theme: ThemeData(primaryColor: widget.selectedColor.withAlpha(255)),
      home: Scaffold(
        appBar: AppBar(
            title: Text(_headerName),
            actions: <Widget>[AppHeader(_mySetState, widget.selectedColor)]),
        drawer: DrawerComponent(),
        body: MainBody(colorSwatch: widget._primarySwatch),
        bottomNavigationBar:BottomNav(widget._primarySwatch)
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
      child: Column(
          children: <Widget>[SizedBox(child: ProfileHead(widget.colorSwatch))]),
    );
  }
}
