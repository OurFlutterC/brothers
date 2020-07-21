import 'package:brothers/Page015.dart';

import 'package:brothers/util.dart';
import 'package:flutter/material.dart';

class Page010 extends StatefulWidget {
  @override
  _Page010State createState() => _Page010State();
}

class _Page010State extends State<Page010> {
  Widget txt(String st, double sz, FontWeight fw) {
    return Text(st, style: TextStyle(fontSize: sz, fontWeight: fw));
  }

  Widget decor(
    double r,
    double l,
    double t,
    double b,
    Color clr,
  ) {
    return Positioned(
      child: CircleAvatar(backgroundColor: clr, radius: 40.0),
      right: r,
      top: t,
      bottom: b,
      left: l,
    );
  }

  Widget containers(Color cclr, IconData icn, String st, String bt, Color ln) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: cclr, borderRadius: BorderRadius.circular(10.0)),
          height: 130.0,
          width: 140.0,
        ),
        Positioned(
            top: 80,
            left: 20,
            child: Text(
              st,
              style: TextStyle(color: Colors.white),
            )),
        Positioned(
            top: 100,
            left: 20,
            child: Text(
              bt,
              style: TextStyle(color: Colors.white),
            )),
        Positioned(
          top: 20.0,
          left: 20.0,
          child: CircleAvatar(
            child: Icon(icn, size: 35.0, color: ln),
            radius: 25.0,
            backgroundColor: Colors.white,
          ),
        ),
        decor(100, null, null, null, Colors.white12),
        decor(null, 100.0, 60.0, null, Colors.white12),
        decor(null, 100.0, null, null, Colors.white12),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.menu,
                    ),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: Stack(
                      children: <Widget>[
                        Icon(Icons.notifications_none),
                        Positioned(
                            left: 15.0,
                            child: CircleAvatar(
                                radius: 4, backgroundColor: Colors.red))
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: CircleAvatar(
                    child: Image.network(
                        'https://i.pinimg.com/236x/9c/89/db/9c89dbaab265183665fe0e9462531580.jpg'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 150.0, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  txt("Welcome Back", 16, FontWeight.w300),
                  txt("Creative Mints", 22, FontWeight.bold),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              height: 50.0,
              width: 290,
              child: TextField(
                textInputAction: TextInputAction.search,
                enableSuggestions: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hoverColor: Colors.black,
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  labelText: 'search',
                ),
                onSubmitted: (value) {},
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.74,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  containers(Colors.green, Icons.attach_money, "Transactions",
                      '7 ltems', Colors.green),
                  containers(Colors.red, Icons.autorenew, 'Budget', '6 ltems',
                      Colors.red),
                  containers(Colors.orange, Icons.usb, "Recomendations",
                      '6 ltems', Colors.orange),
                  containers(Colors.blue, Icons.store, "Credit Cards",
                      "3 Cards", Colors.blue),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 1),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(right: 110, top: 7),
              child: txt("Choose a categories", 23, FontWeight.normal),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 35, left: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blue[200],
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Branch ",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Services",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      width: 140.0,
                      height: 77.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.blue[400],
                              child: Icon(
                                Icons.add_to_home_screen,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Make a ",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "Payment",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        width: 140.0,
                        height: 77.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
