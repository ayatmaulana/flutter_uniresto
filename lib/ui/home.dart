import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './widgets/header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _card(
      Image image, String title, String price, int star, int totalOrder) {
    List<Widget> stars = List();
    for (int i = 1; i <= star; i++) {
      stars.add(Icon(
        Icons.star,
        color: Color(0xFFFF8A00),
        size: 17,
      ));
      stars.add(SizedBox(width: 0.5));
    }

    return Container(
      // decoration: BoxDecoration(
      //                           border: Border.all(
      //                             width: 20
      //                           )
      //                         ),
      width: MediaQuery.of(context).size.width * 80/100,
        padding: const EdgeInsets.only(),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: <Widget>[
                    Container(
                      // decoration: BoxDecoration(
                      //           border: Border.all(
                      //             width: 20
                      //           )
                      //         ),
                      padding: const EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width * 77 / 100,
                      child: image,
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 10)
                        ]),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Container(
              //  decoration: BoxDecoration(
              //                   border: Border.all(
              //                     width: 1
              //                   )
              //                 ),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 17.0, right: 17.0, top: 1),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    // flex: 3,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // decoration: BoxDecoration(
                          //       border: Border.all(
                          //         width: 10
                          //       )
                          //     ),
                          width: MediaQuery.of(context).size.width * 40/100,
                          child: Text(title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height:5,),
                        Container(
                          
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(children: [
                                      ...stars,
                                      Text("$totalOrder (Pemesan)",
                                        style: TextStyle(fontSize: 10)),
                                    ]),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Rp $price",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(12),
                                    color: Color(0xFFFF8A00)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget titleText(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1)),
        ],
      ),
    );
  }

  Widget box(Color color, Image image) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadiusDirectional.circular(10)),
      child: image,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Header(),
            SizedBox(height: 30),
            titleText("Food Categories"),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  box(Color(0xFFFFC465),
                      Image.asset("assets/images/gelas.png")),
                  box(Color(0xFF68EA75),
                      Image.asset("assets/images/tutup_panci.png")),
                  box(Color(0xFF5BBBF2), Image.asset("assets/images/kue.png")),
                  box(Color(0xFFFB76F5),
                      Image.asset("assets/images/burger.png")),
                ],
              ),
            ),
            SizedBox(height: 30),
            titleText("Most Popular Food"),
            SizedBox(height: 30),
            Container(
              height: 300.0,
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi Special", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_2.png'),
                      "Gado Gado Betawi Biasa", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi Luar Biasa", "10.000", 5, 200)
                ],
              ),
            ),
            // SizedBox(height: 30),
            titleText("Most Popular Food"),
            SizedBox(height: 30),
            Container(
              height: 300.0,
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_2.png'),
                      "Gado Gado Betawi", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi", "10.000", 5, 200)
                ],
              ),
            ),
            // SizedBox(height: 30),
            titleText("Most Popular Food"),
            SizedBox(height: 30),
            Container(
              height: 300.0,
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_2.png'),
                      "Gado Gado Betawi", "10.000", 5, 200),
                  _card(Image.asset('assets/images/makanan_1.png'),
                      "Gado Gado Betawi", "10.000", 5, 200)
                ],
              ),
            ),
            SizedBox(height: 70),
          ],
        )
      ]),
    );
  }
}
