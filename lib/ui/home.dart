import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        size: 15,
      ));
    }
    stars.add(Text("$totalOrder (Pemesan)", style: TextStyle(fontSize: 10)));

    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            image,
            Padding(
              padding: const EdgeInsets.only(top:16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold
                        )
                      ),
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: stars),
                      Container(
                        child: Text(
                          "Rp $price",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white
                          ),
                        ),
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(12),
                          color: Color(0xFFFF8A00)
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      );
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
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadiusDirectional.circular(10)),
      child: image,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset('assets/images/uniresto.png'),
                    Image.asset('assets/images/menu.png')
                  ],
                ),
              ),
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
                    box(Color(0xFF5BBBF2),
                        Image.asset("assets/images/kue.png")),
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
                        "Gado Gado Betawi", "10.000", 5, 200),
                    // _card(Image.asset('assets/images/makanan_2.png'),
                    //     "Gado Gado Betawi", "10.000", 5, 200),
                    // _card(Image.asset('assets/images/makanan_1.png'),
                    //     "Gado Gado Betawi", "10.000", 5, 200)
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.black,
                    )
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
