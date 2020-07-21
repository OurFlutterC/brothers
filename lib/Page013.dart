
import 'package:flutter/material.dart';


class Page013 extends StatefulWidget {
  @override
  _Page013State createState() => _Page013State();
}

class _Page013State extends State<Page013> {
  Widget tbn(double w, double h, Color clr, String st, double fn, FontWeight fw,
      Color tc) {
    return Container(
      width: w,
      height: h,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Text(
          st,
          style: TextStyle(fontSize: fn, color: tc, fontWeight: fw),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: clr,
          boxShadow: []),
    );
  }

  Widget profil(double br) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQnXQ8uSpzaWGCVPHtSbvXv1sYKXuxx8W7yQTvOPOMHpYG5G-xl&usqp=CAU")),
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(br)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width * 1.0,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Text(
                    "12 Jan 2020,\n8am-10am",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width * 1.0,
                ),
                Align(
                  alignment: Alignment(1, -0.85),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_back, color: Colors.white, size: 26),
                      Text("Appointment Request",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      Icon(Icons.menu, color: Colors.white, size: 26),
                    ],
                  ),
                ),
                Positioned(
                  top: 216,
                  right: 121,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: 36.7,
                    child: CircleAvatar(
                      minRadius: 30,
                      backgroundColor: Colors.greenAccent[200],
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 205,
                  left: 42,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.158,
                      padding: EdgeInsets.all(10.0),
                      child: profil(20)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 137.0),
            child: Text("Louis\nPatterson",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 187.0),
                  child: Text("Comment:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                ),
                SizedBox(height: 10),
                Text(
                    "Hello Dr. Patterson,\nI going to pring my complete blood\ncount analsis with me",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            )),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width * 0.77,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 40),
                      Icon(Icons.border_horizontal, color: Colors.blue[400]),
                      Text("Complete blood count",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text("05 Mar 2020",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ],
              )),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              tbn(170, 53, Colors.blue, "ACCEPT", 14, FontWeight.w700,
                  Colors.white),
              tbn(95, 53, Colors.grey[300], "ACCEPT", 14, FontWeight.w700,
                  Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
