import 'package:flutter/material.dart';
import 'package:brothers/Page002.dart';
import 'package:brothers/Page004.dart';
import 'Page001.dart';

class Page003 extends StatefulWidget {
  @override
  _Page003State createState() => _Page003State();
}

class _Page003State extends State<Page003> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              appbar(context, "Checkout"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.115,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 30),
                        child: circle(context, Colors.red, Colors.red),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 45),
                        child: Text("Address"),
                      ),
                      Align(
                        alignment: Alignment(-0.59, -0.6),
                        child: Container(
                          height: 1,
                          width: 100,
                          color: Colors.red,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.38, -0.6),
                        child: Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160.0),
                        child: circle(context, Colors.red, Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 147.0, top: 45),
                        child: Text("Payments"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300.0),
                        child: circle(context, null, Colors.grey[300]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0, left: 287),
                        child: Text(
                          "summary",
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Icon(Icons.credit_card, color: Colors.grey),
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Icon(Icons.card_travel, color: Colors.white),
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red[300],
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Icon(Icons.card_giftcard, color: Colors.grey),
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ],
              ),
              fied(context, "NEXT", "BACK"),
              cnt(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget circle(BuildContext context, Color clr, Color cr) {
  return Stack(
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(60)),
            border: Border.all(width: 1, color: cr)),
      ),
      Padding(
        padding: const EdgeInsets.all(7.5),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.06,
          height: MediaQuery.of(context).size.height * 0.03,
          decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
        ),
      ),
    ],
  );
}
