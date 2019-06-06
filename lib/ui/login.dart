import 'package:flutter/material.dart';
import 'package:uniresto/ui/widgets/button.dart';
import 'package:uniresto/ui/widgets/form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1],
                  colors: <Color>[
                    Color(0xff0287D1),
                    Color(0xff40BCF2)
                  ]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                  SizedBox(
                    height: 70,
                  ),
                  formWidget('Username'),
                  SizedBox(
                    height: 10,
                  ),
                  formWidget('Password'),
                  SizedBox(
                    height: 30,
                  ),
                  buttonWidget("Login", callback: () {
                    Navigator.pushNamed(context, '/app');
                  }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      FlatButton(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/register'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
