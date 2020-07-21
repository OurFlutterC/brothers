import 'package:flutter/material.dart';

class Page014 extends StatefulWidget {
  @override
  _Page014State createState() => _Page014State();
}

class _Page014State extends State<Page014> {
  Widget cheute() {
    return Container(
      color: Colors.green,
      child: Row(
        children: <Widget>[
          Container(),
          Column(
            children: <Widget>[
              Text("dhdf"),
              Text("fdgd"),
            ],
          ),
          Icon(Icons.add_call),
        ],
      ),
    );
  }

  Widget ictx() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        Icon(Icons.account_circle),
        SizedBox(
          width: 20,
        ),
        Text("fdùl ùfùkfkfù dfgmldfj ùljgdsùg"),
      ],
    );
  }

  Widget cont() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text("klfg"),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.account_circle),
            ],
          ),
          ictx(),
        ],
      ),
    );
  }

  Widget tbn(
      double w, double h, Color clr, String st, double fn, FontWeight fw) {
    return Container(
      width: w,
      height: h,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {}, //() //{
        //Navigator.of(context).push(
        //    MaterialPageRoute(builder: (context) => Vioture()));
        //},
        child: Text(
          st,
          style: TextStyle(fontSize: fn, color: Colors.black, fontWeight: fw),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: clr,
          boxShadow: [
            //BoxShadow(
            //color: Colors.black.withOpacity(0.3),
            //blurRadius: 10.0,
            //spreadRadius: 2.0)
          ]),
    );
  }

  Widget profil(double hs, double ws, double br) {
    return Container(
      height: hs,
      width: ws,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQnXQ8uSpzaWGCVPHtSbvXv1sYKXuxx8W7yQTvOPOMHpYG5G-xl&usqp=CAU")),
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(br)),
      ),
    );
  }

  Widget ContChat(String st, String sn) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.110,
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: profil(55, 55, 24),
              ),
              Positioned(
                top: 40,
                left: 37,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 9,
                  child: CircleAvatar(
                    minRadius: 6,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text(
                  st,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 7),
              Text(sn,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            width: 45,
          ),
          Icon(Icons.power_input),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.menu),
              Icon(Icons.date_range),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190.0),
            child: Text(
              "Welcom Back",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180.0),
            child: Text(
              "Dr. peterson",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(27),
                      topLeft: Radius.circular(27)),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.11,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Appointment Request",
                            style: TextStyle(color: Colors.white)),
                        Icon(
                          Icons.playlist_play,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.access_time,
                              color: Colors.white, size: 16),
                          SizedBox(width: 5),
                          Text("12 Jan 2020, 8am _ 10am",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 59,
                      spreadRadius: 0.0,
                      offset: Offset(15.0, 20.0),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(27),
                      bottomRight: Radius.circular(27)),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        profil(55, 55, 20),
                        Column(
                          children: <Widget>[
                            Text("Louis",
                                style: TextStyle(
                                  fontSize: 17,
                                )),
                            SizedBox(height: 7),
                            Text(
                              "  Patterson",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Icon(Icons.account_balance),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        tbn(160, 40, Colors.blue, "ACCEPT", 14,
                            FontWeight.w700),
                        SizedBox(width: 20),
                        tbn(95, 40, Colors.grey[300], "ACCEPT", 14,
                            FontWeight.w700),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 128.0),
            child: Text(
              'Next appointments',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 6),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            height: 251,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: <Widget>[
                ContChat("  Dorothey Nelson", "  09 Jan 2020, 8am _ 10am"),
                SizedBox(height: 10),
                ContChat("Carl Pope", "    09 Jan 2020, 11am _ 9pm"),
                SizedBox(height: 10),
                ContChat("Ora Murray", "   10 Jan 2020, 09am _ 10am"),
                SizedBox(height: 10),
                ContChat("  Dorothey Nelson", "  09 Jan 2020, 8am _ 10am"),
                SizedBox(height: 10),
                ContChat("Carl Pope", "    09 Jan 2020, 11am _ 9pm"),
                SizedBox(height: 10),
                ContChat("Ora Murray", "   10 Jan 2020, 09am _ 10am"),
                SizedBox(height: 10),
                ContChat("  Dorothey Nelson", "  09 Jan 2020, 8am _ 10am"),
                SizedBox(height: 10),
                ContChat("Carl Pope", "    09 Jan 2020, 11am _ 9pm"),
                SizedBox(height: 10),
                ContChat("Ora Murray", "   10 Jan 2020, 09am _ 10am"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
