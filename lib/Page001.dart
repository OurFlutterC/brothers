import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:brothers/Page002.dart';

class Page001 extends StatefulWidget {
  @override
  _Page001State createState() => _Page001State();
}

class _Page001State extends State<Page001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          appbar(context, "Checkout"),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://icons-for-free.com/iconfiles/png/512/payment+online+transaction+payment+method+visa+icon-1320186545601939752.png")),
              color: Colors.red[100],
              borderRadius: BorderRadius.all(Radius.circular(300)),
            ),
          ),
          Text(
            "Order Accepted",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("Your Order No. #123-456\n     has been placed",
              style: TextStyle(fontSize: 13)),
          Container(
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => Page002()));
                },
                child: Text(
                  "TRACK ORDER",
                  style: TextStyle(color: Colors.white),
                )),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.86,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.red[300],
            ),
          ),
          cnt(context),
        ],
      ),
    );
  }
}

Widget appbar(BuildContext context, String txt) {
  return Container(
    height: MediaQuery.of(context).size.height / 7,
    width: MediaQuery.of(context).size.width / 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          Icons.playlist_play,
          color: Colors.grey[500],
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 24, color: Colors.red[300]),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.search, color: Colors.grey[500]),
      ],
    ),
  );
}

Widget cnt(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top:4.0),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.home, color: Colors.grey[400], size: 30),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Icon(Icons.add_shopping_cart,
                    color: Colors.red[300], size: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 10),
                child: CircleAvatar(
                  minRadius: 7,
                  backgroundColor: Colors.red,
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 12),
                child: Text(
                  "Cart",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          Icon(
            Icons.person,
            color: Colors.grey[400],
            size: 30,
          ),
          Icon(Icons.settings, color: Colors.grey[400], size: 30),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        border: Border.all(width: 1, color: Colors.red),
      ),
    ),
  );
}
