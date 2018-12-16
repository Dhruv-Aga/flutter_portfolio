import 'package:flutter/material.dart';

class AppHeader extends AppBar {
  String namePorfolio;
  AppHeader(this.namePorfolio);
  Widget build() {
    return AppBar(
        title: Text(namePorfolio),
        actions: <Widget>[

        ]
    );
  }
}
