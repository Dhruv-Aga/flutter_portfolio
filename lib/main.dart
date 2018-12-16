import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './top_header.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String _headerName = "Dhruv Agarwal";
  MaterialColor primaryColor = Colors.blue;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: [
          const Locale('en', 'US'), // American English
          const Locale('he', 'IL'), // Israeli Hebrew
          // ...
        ],
        title: 'Portfolio',
        theme: new ThemeData(
          primarySwatch: primaryColor,
        ),
        home: Scaffold(
            appBar: AppHeader(_headerName),
        )
    );
  }
}

//
//
