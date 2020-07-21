import 'package:flutter/material.dart';

class Page005 extends StatefulWidget {
  @override
  _Page005State createState() => _Page005State();
}

class _Page005State extends State<Page005> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Sone(context),
        ],
      ),
    );
  }
}

Widget Sone(BuildContext context) {
  return Container(
    color: Colors.orange[400],
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          left: 20.0,
          child: Column(
            children: <Widget>[
              Text("14-16"),
              Text("Fob"),
              SizedBox(
                height: 100.0,
              ),
              Text("14-18"),
              Text("Fob"),
            ],
          ),
        ),
        Align(
          alignment: Alignment(1, -0.85),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.18,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.white),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://storage.googleapis.com/assets-pam-blog/2020/04/26c48a38-moro-.jpg"),
                ),
              ),
              Text('Hi, Lelly'),
              SizedBox(
                width: 20.0,
              ),
              Text("Mon, 14 Feb"),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.16,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40))),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("RUNNING TASK",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "See All",
                              style: TextStyle(color: Colors.orange[400]),
                            ),
                            Container(
                              color: Colors.orange[400],
                              width: MediaQuery.of(context).size.width * 0.13,
                              height:
                                  MediaQuery.of(context).size.height * 0.0015,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Done(
                  context,
                  "DONE",
                  Colors.orange[400],
                ),
                SizedBox(
                  height: 20,
                ),
                Done(context, "PROGRESS", Colors.blueAccent),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("NEXT TASK",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "See All",
                              style: TextStyle(color: Colors.orange[400]),
                            ),
                            Container(
                              color: Colors.orange[400],
                              width: MediaQuery.of(context).size.width * 0.13,
                              height:
                                  MediaQuery.of(context).size.height * 0.0015,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.025,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  int cl =
                      double.parse("${index / 2}").toString().split(".")[1] ==
                              "0"
                          ? 0
                          : 1;
                  return view(context, clrs[cl]);
                },
              ),
            )),
      ],
    ),
  );
}

Widget Done(BuildContext context, String txt, Color clr) {
  return Row(
    children: <Widget>[
      Container(
        color: Colors.grey[100],
        width: MediaQuery.of(context).size.width * 0.65,
        height: MediaQuery.of(context).size.height * 0.17,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Landing Page Disegn",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text("SEO Landing Page Disegn"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("By : ",
                    style: TextStyle(
                        color: Colors.orange[400],
                        fontWeight: FontWeight.bold)),
                Text("jenny", style: TextStyle(color: Colors.orange[400])),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.height * 0.17,
        decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: RotatedBox(
          child: Center(
              child: Text(
            txt,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: clr == Colors.blueAccent ? Colors.white : Colors.black),
          )),
          quarterTurns: 3,
        ),
      ),
    ],
  );
}

List<Color> clrs = [Colors.blue, Colors.orange[400]];
Widget view(BuildContext context, Color clr) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.05,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.black12),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "SEO Landing Page\nDisegn",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("By : VE Info"),
                  Text(
                    "18 - 24 Feb",
                    style: TextStyle(color: Colors.orange[400]),
                  ),
                  Row(
                    children: <Widget>[
                      circl(context,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSoWa6bKaCp2521gI8j865D-kaO9vuJlkxlIA&usqp=CAU"),
                      circl(context,
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      circl(context,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyQXHVRXCsvxnO8_RuPIws5ggXPqYKN2Fj9Q&usqp=CAU"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget circl(BuildContext context, String img) {
  return Padding(
    padding: EdgeInsets.all(4.0),
    child: CircleAvatar(
      backgroundImage: NetworkImage(img),
      radius: 10,
    ),
  );
}
