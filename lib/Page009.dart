import 'dart:ui';

import 'package:flutter/material.dart';

class Page009 extends StatefulWidget {
  @override
  _Page009State createState() => _Page009State();
}

class _Page009State extends State<Page009> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/10/01/21/39/background-image-967820_960_720.jpg")),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 500.0, left: 65),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.07,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 66.0, left: 160),
            child: Text("FLIPBOARD",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 100),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.13,
              height: MediaQuery.of(context).size.height * 0.07,
              color: Colors.pink,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 6),
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.03,
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 6),
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.03,
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 6),
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.03,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 260.0, top: 120),
                child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 225.0, left: 110),
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 0.334,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 340.0),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 0.34,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380.0, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "LE TEMPS\n DE L'INFO",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    Text("personnalisé pour vos intérêts",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.purple,
                          Colors.lightBlueAccent
                        ])),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: RaisedButton(
                            color: Colors.transparent,
                            onPressed: () {},
                            child: Text("Commencer",
                                style: TextStyle(
                                  color: Colors.white,
                                )))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
