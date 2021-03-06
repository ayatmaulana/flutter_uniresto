import 'package:flutter/material.dart';

Widget buttonWidget(String text, {Function callback})  {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(55)),
    ),
    width: double.infinity,
    height: 60.0,
    child: FlatButton(
      color: Color(0xffFEA134),
      textColor: Colors.white,
      padding: EdgeInsets.all(8.0),
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    ),
  );
}