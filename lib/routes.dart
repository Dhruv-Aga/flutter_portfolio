import 'package:flutter/material.dart';

import 'screens/auth/index.dart';
import 'screens/dashboard/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Auth': (BuildContext context) => new Auth(),
    '/Dashboard': (BuildContext context) => new MyApp()
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Portfolio',
      routes: routes,
      initialRoute: "/Auth",
      home: new MyApp(),
    ));
  }
}
