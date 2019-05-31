import 'package:flutter/material.dart';

Widget formWidget(String placeholder) {
  return TextField(
    textAlign: TextAlign.center,
    style: TextStyle(height: 1.0),
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Color(0XFF48b0e5),
        hintText: placeholder,
        hintStyle: TextStyle(
          color: Colors.white,
          letterSpacing: 1,
        ),
        focusColor: Color(0XFF48b0e5)),
  );
}
