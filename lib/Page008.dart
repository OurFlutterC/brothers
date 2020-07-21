import 'package:flutter/material.dart';

class Page008 extends StatefulWidget {
  @override
  _Page008State createState() => _Page008State();
}

class _Page008State extends State<Page008> {
  PageController ctrl = PageController();
  Widget txtField() {
    return Container(
      color: Colors.grey[200],
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50.0,
      child: TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          hintText: "User name",
          labelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.22,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "MON COMPTE",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          onPressed: () {},
                          child: Icon(
                            Icons.help_outline,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.orange,
                                      width: check ? 3.0 : 1.0))),
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  check = true;
                                });
                                ctrl.animateToPage(0,
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.fastOutSlowIn);
                              },
                              child: Text("Se connecter",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)))),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.orange,
                                      width: check ? 1.0 : 3.0))),
                          width: MediaQuery.of(context).size.width / 2.31,
                          child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  check = false;
                                });
                                ctrl.animateToPage(1,
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.fastOutSlowIn);
                              },
                              child: Text("S'inscrire",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)))),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.78,
              child: PageView(
                controller: ctrl,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        txtField(),
                        SizedBox(height: 20.0),
                        txtField(),
                        SizedBox(height: 40.0),
                        Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 20.0,
                                    spreadRadius: 5.0)
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50.0,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text("Se connecter",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              color: Colors.orange,
                            )),
                        SizedBox(height: 40.0),
                        Text(
                          'Mots de passe oblié ?',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        Divider(
                          color: Colors.orange,
                          thickness: 1.5,
                          indent: 112.0,
                          endIndent: 125,
                          height: 1,
                        )
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
