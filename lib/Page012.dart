import 'package:flutter/material.dart';

class Page012 extends StatefulWidget {
  @override
  _Page012State createState() => _Page012State();
}

class _Page012State extends State<Page012> {
  Widget crkl(clr, icn, rds) {
    return CircleAvatar(
      backgroundColor: clr,
      child: icn,
      radius: rds,
    );
  }

  Widget txtFd(String lbl, bool fr, double sf, Icon cn) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextField(
        obscureText: fr,
        decoration: InputDecoration(
          icon: cn,
          labelText: lbl,
        ),
      ),
    );
  }

  Widget txt(String txt, double sf, double tf, FontWeight wf, Color clr) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: sf,
          fontStyle: FontStyle.normal,
          fontWeight: wf,
          color: clr),
    );
  }

  Widget cnt(clr, icn) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(14, 226, 208, 1),
          Color.fromRGBO(96, 118, 227, 1)
        ]),
        borderRadius: BorderRadius.circular(75),
      ),
      child: icn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2018/06/Halftone-Texture-Color-Effect_Before.gif"))),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 50.0,
                        spreadRadius: 1.0)
                  ],
                  color: Colors.white),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 250.0, top: 5),
                    child: txt("Login", 20, 20, FontWeight.bold, Colors.black),
                  ),
                  txtFd("User Name", false, 40, Icon(Icons.pregnant_woman)),
                  txtFd("Password", true, 50, Icon(Icons.pregnant_woman)),
                  Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text("forgot password?",
                          style: TextStyle(color: Colors.blue))),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(value: false, onChanged: null),
                    txt("remenber me", 15, 10, FontWeight.w300, Colors.grey),
                  ],
                ),
                Container(
                  width: 180,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(14, 226, 208, 1),
                        Color.fromRGBO(96, 118, 227, 1)
                      ]),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10.0,
                            spreadRadius: 2.0)
                      ]),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Stack(
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                  endIndent: MediaQuery.of(context).size.width * 0.62,
                  indent: 0.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 165),
                  child:
                      txt("Social Login", 15, 18, FontWeight.w400, Colors.grey),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                  indent: MediaQuery.of(context).size.width * 0.63,
                  endIndent: 0.0,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              cnt(Colors.red, Icon(Icons.feedback, color: Colors.white)),
              SizedBox(width: 8.0),
              cnt(Colors.red, Icon(Icons.group_add, color: Colors.white)),
              SizedBox(width: 8.0),
              cnt(Colors.red, Icon(Icons.pregnant_woman, color: Colors.white)),
              SizedBox(width: 8.0),
              cnt(Colors.red,
                  Icon(Icons.transfer_within_a_station, color: Colors.white)),
              SizedBox(width: 8.0),
            ]),
            SizedBox(height: 20.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("New User? "),
              Text("Signup", style: TextStyle(color: Colors.blue))
            ])
          ],
        ),
      ),
    );
  }
}
