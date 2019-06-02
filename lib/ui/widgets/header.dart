import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/images/uniresto.png'),
          FlatButton(
            child: Image.asset('assets/images/menu.png'),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: Text("Credit"),
                    content: Text(
                        "Made With \n 💙 + Flutter \n - \n - \n Ayat Maulana "),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        child: Text("Yes"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                }
              );
            },
          )
        ],
      ),
    );
  }
}
