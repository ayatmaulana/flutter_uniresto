import 'package:flutter/material.dart';
import 'package:uniresto/ui/widgets/header.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  Widget titleText(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1)),
        ],
      ),
    );
  }

  Widget card({Image image, String price, String title, Function callback}) {
    return GestureDetector(
      onTap: callback,
      child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[
                  image,
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 10),
                                blurRadius: 10)
                          ]),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(title,
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "Rp $price",
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 2, bottom: 2),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                  color: Color(0xFFFF8A00)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Header(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      titleText("All Cuisines"),
                      Image.asset('assets/images/filter.png')
                    ]),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                    crossAxisCount: 2,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(10, (index) {
                      String picture =
                          index % 2 == 0 ? 'makanan_1' : 'makanan_2';
                      return card(
                          image: Image.asset("assets/images/$picture.png"),
                          price: "10.000",
                          title: "Martabak Goreng Special",
                          callback: () {
                            Navigator.pushNamed(context, '/detail');
                          });
                    })),
              )
            ],
          )
        ],
      ),
    );
  }
}
