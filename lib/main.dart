import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'ui/register.dart';
import 'ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register()
      },
    );
  }
}
