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
                    height: 70,
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
                        GestureDetector(
                          child: Icon(
                            Icons.home,
                            color: Colors.yellow[700],
                            size: 30,
                          ),
                          onTap: () {
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Icon(Icons.hot_tub),
                          onTap: () {
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                        ),
                        Icon(Icons.file_download),
                        Icon(Icons.fiber_pin),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
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
