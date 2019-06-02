import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:uniresto/ui/app.dart';
import 'package:uniresto/ui/catalog.dart';
import 'package:uniresto/ui/detail.dart';
import 'package:uniresto/ui/home.dart';
import 'package:uniresto/ui/register.dart';
import 'package:uniresto/ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/app': (context) => App(),
        '/home': (context) => Home(),
        '/catalog': (context) => Catalog(),
        '/detail': (context) => Detail(),
        '/login': (context) => Login(),
        '/register': (context) => Register()
      },
    );
  }
}
