import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uniresto/ui/widgets/button.dart';
import 'package:uniresto/ui/widgets/form.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1],
                  colors: <Color>[Color(0xff0287D1), Color(0xff40BCF2)]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                  SizedBox(
                    height: 30,
                  ),
                  formWidget('Name'),
                  SizedBox(
                    height: 10,
                  ),
                  formWidget('Username'),
                  SizedBox(
                    height: 10,
                  ),
                  formWidget('Email'),
                  SizedBox(
                    height: 10,
                  ),
                  formWidget('Password'),
                  SizedBox(
                    height: 10,
                  ),
                  formWidget('Confirm Password'),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buttonWidget("Register", callback: () {
                    Navigator.pushNamed(context, '/app');
                  }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Already have an account ?',
                        style: TextStyle(color: Colors.white),
                      ),
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}