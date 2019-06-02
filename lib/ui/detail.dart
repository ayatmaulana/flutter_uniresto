import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Widget titleText(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 30),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset('assets/images/gambar_gede.png'),
                    Positioned(
                      right: 50,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(5),
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
                          Icons.share,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 100,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(5),
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
                          Icons.bookmark,
                          color: Colors.yellow[800],
                          size: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 150,
                      bottom: 20,
                      child: Container(
                        padding: const EdgeInsets.all(5),
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
                          size: 20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
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
                            Icons.arrow_back,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gado Gado Betawi Special',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the'
                          'printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy'
                          'Lorem Ipsum is simply dummy text of the'
                          'printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFF8A00),
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFF8A00),
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFF8A00),
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFF8A00),
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFF8A00),
                                  size: 17,
                                ),
                                Text("200 (Pemesan)",
                                    style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              "Rp 10.000",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(12),
                                color: Color(0xFFFF8A00)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      titleText("Other Food"),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: ScrollPhysics(),
                          // shrinkWrap: true,
                          children: <Widget>[
                            Image.asset('assets/images/other_1.png'),
                            Image.asset('assets/images/other_2.png'),
                            Image.asset('assets/images/other_1.png')
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
