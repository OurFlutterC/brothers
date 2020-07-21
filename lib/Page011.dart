import 'dart:io';

import 'package:brothers/Page012.dart';
import 'package:brothers/Page009.dart';
import 'package:flutter/material.dart';

class Page011 extends StatefulWidget {
  @override
  _Page011State createState() => _Page011State();
}

class _Page011State extends State<Page011> {
  Widget crkl(clr, icn, rds) {
    return CircleAvatar(
      backgroundColor: clr,
      child: icn,
      radius: rds,
    );
  }

  Widget all() {
    return Stack(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 200, right: 50),
        child: crkl(
          Colors.blue,
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          30.0,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 180, left: 45),
        child: crkl(
          Colors.green,
          Icon(
            Icons.input,
            color: Colors.white,
          ),
          30.0,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 220, left: 40),
        child: crkl(Colors.yellow[600],
            Icon(Icons.voicemail, color: Colors.white), 30.0),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 200, left: 85),
        child: crkl(
            Colors.red, Icon(Icons.access_alarm, color: Colors.white), 30.0),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            all(),
            Text(
              'Quick Bee',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            Container(
              width: 300,
              height: 60,
              margin: EdgeInsets.only(top: 50.0),
              decoration: BoxDecoration(
                  color: Colors.green[300],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  )),
              child: FlatButton(
                onPressed: () {},
                splashColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                )),
                child: Text(
                  'sign in white Email',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )),
                  child: FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    )),
                    child: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )),
                  child: FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    )),
                    child: Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
