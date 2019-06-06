import 'package:flutter/material.dart';
import 'package:uniresto/ui/catalog.dart';
import 'package:uniresto/ui/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Home(),
    Catalog(),
    Home(),
    Catalog(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _pages[_currentIndex],
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.transparent),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * (99 / 100),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, -3),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                child: Image.asset('assets/images/icon_home.png'),
                                onTap: () {
                                  setState(() {
                                    _currentIndex = 0;
                                  });
                                },
                              ),
                              InkWell(
                                child: Image.asset('assets/images/icon_star.png'),
                                onTap: () {
                                  setState(() {
                                    _currentIndex = 1;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                child: Image.asset('assets/images/icon_trolly.png'),
                              ),
                              InkWell(
                                child: Image.asset('assets/images/icon_user.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xFFFF006B), shape: BoxShape.circle),
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red,
      //   elevation: 0,
      //   child: Icon(
      //     Icons.favorite,
      //     color: Colors.white,
      //   ),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
