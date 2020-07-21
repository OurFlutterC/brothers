import 'package:flutter/material.dart';
import 'package:brothers/Page004.dart';

import 'Page001.dart';

class Page002 extends StatefulWidget {
  @override
  _Page002State createState() => _Page002State();
}

class _Page002State extends State<Page002> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          appbar(context, "Edit Cards"),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 220.0,
                  ),
                  child: Text(
                    "VISA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "4560",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                    Text("5474",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900)),
                    Text("3224",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900)),
                    Text("4543",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Card Holder",
                        style: TextStyle(color: Colors.white, fontSize: 11)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Expiry",
                        style: TextStyle(color: Colors.white, fontSize: 11)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Jameson Dunn",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      width: 30,
                    ),
                    Text("O9 - 20",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red[400], Colors.red[900]]),
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            height: MediaQuery.of(context).size.height * 0.19,
            width: MediaQuery.of(context).size.width * 0.79,
          ),
          fied(context, "SAVE", "CANCEL"),
          cnt(context),
        ],
      ),
    ));
  }
}

Widget fied(BuildContext context, String t, String l) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.597,
    width: MediaQuery.of(context).size.width * 0.8,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Name on Card",
              style: TextStyle(color: Colors.grey),
            )),
        fieldTxt(context, 60, 300),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Card Number",
              style: TextStyle(color: Colors.grey),
            )),
        fieldTxt(context, 60, 300, icn: Icons.credit_card),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Expiry Data",
                  style: TextStyle(color: Colors.grey),
                ),
                fieldTxt(context, 60, 140),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "CVV",
                  style: TextStyle(color: Colors.grey),
                ),
                fieldTxt(context, 60, 130),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.check_circle,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Save this card details"),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Text(
                    l,
                    style: TextStyle(color: Colors.black),
                  )),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            Container(
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Text(
                    t,
                    style: TextStyle(color: Colors.white),
                  )),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.red[300],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget fieldTxt(BuildContext context, double z, double s, {IconData icn}) {
  return Container(
    height: z,
    width: s,
    child: TextField(
      decoration: InputDecoration(suffixIcon: Icon(icn)),
    ),
  );
}
