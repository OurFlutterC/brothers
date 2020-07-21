import 'package:flutter/material.dart';
import 'package:brothers/Page001.dart';
import 'package:brothers/Page002.dart';
import 'package:brothers/Page003.dart';
import 'package:brothers/Page004.dart';
import 'package:brothers/Page005.dart';
import 'package:brothers/Page007.dart';
import 'package:brothers/Page010.dart';
import 'package:brothers/Page009.dart';
import 'package:brothers/Page011.dart';
import 'package:brothers/Page015.dart';
import 'package:brothers/Page008.dart';
import 'package:brothers/Page013.dart';
import 'package:brothers/Page014.dart';
import 'package:brothers/Page006.dart';
import 'package:brothers/Page012.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Practice BroFlutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          children: <Widget>[
            Page001(),
            Page002(),
            Page003(),
            Page004(),
            Page005(),
            Page006(),
            Page007(),
            Page008(),
            Page009(),
            Page010(),
            Page011(),
            Page012(),
            Page013(),
            Page014(),
            Page015(),
          ],
        ),
      ),
    );
  }
}
