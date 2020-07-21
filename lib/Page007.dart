import 'package:flutter/material.dart';
import 'package:brothers/model.dart';
import 'package:brothers/util.dart';

class Page007 extends StatefulWidget {
  @override
  _Page007State createState() => _Page007State();
}

class _Page007State extends State<Page007> {
  List<bool> choice = posts.map((f) {
    return f.like;
  }).toList();

  Widget comment(String name, String profile, String comment) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        child: Column(children: [
          Row(
            children: <Widget>[
              Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(profile), fit: BoxFit.cover),
                    border: Border.all(color: Colors.grey[900], width: 5.0),
                    borderRadius: BorderRadius.circular(75)),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(comment,
                style: TextStyle(fontSize: 18.0, color: Colors.grey)),
          )
        ]),
      ),
    );
  }

  TextEditingController cntrl = TextEditingController();
  showComment(context, index) {
    return showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(75), topLeft: Radius.circular(75)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1, -25.0),
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5.0,
                    spreadRadius: 5.0)
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 130.0,
                    endIndent: 130.0,
                    thickness: 2.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 150.0,
                    endIndent: 150.0,
                    thickness: 2.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        itemCount: posts[index].comment.length,
                        itemBuilder: (context, i) {
                          Comment cmnt = posts[index].comment[i];
                          return comment(cmnt.name, cmnt.profile, cmnt.comment);
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.87,
                    child: TextField(
                      controller: cntrl,
                      enableSuggestions: true,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent),
                          ),
                          labelText: 'New Comment',
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey),
                          suffixIcon: IconButton(
                              icon: Icon(Icons.send, color: Colors.grey),
                              onPressed: () {
                                setState(() {
                                  posts[index].comment.add(Comment(
                                        name: "mohamed hhh",
                                        comment: cntrl.text,
                                        profile: "assets/urth.jpg",
                                        like: false,
                                      ));
                                  cntrl.clear();
                                });
                              })),
                      onSubmitted: (value) {
                        setState(() {
                          posts[index].comment.add(Comment(
                                name: "Mohammed",
                                comment: value,
                                profile: "assets/urth.jpg",
                                like: false,
                              ));
                          cntrl.clear();
                        });
                      },
                    ),
                  )
                ],
              ),
            ));
      },
      backgroundColor: Colors.transparent,
    );
  }

  Widget feedback(IconData icn, String text, int index) {
    return GestureDetector(
      onTap: () {
        if (text == "Like") {
          print(text);
          setState(() {
            choice[index] = !choice[index];
          });
        } else if (text == "Comment") {
          showComment(context, index);
        }
      },
      child: Container(
        child: Row(
          children: <Widget>[
            text != "Like"
                ? SizedBox(
                    width: 9,
                  )
                : Container(),
            text != "Like"
                ? Container(
                    color: Colors.grey,
                    width: 1.0,
                    height: 30.0,
                  )
                : Container(),
            IconButton(
                icon: Icon(icn,
                    size: 30.0,
                    color: text == "Like"
                        ? choice[index] ? Colors.red : Colors.grey
                        : Colors.grey),
                onPressed: null),
            SizedBox(
              width: 1.0,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget post(String name, String profile, String post, double h, int index) {
    return Padding(
      padding: EdgeInsets.only(top: h),
      child: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(post),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0, left: 4),
                  child: Text(
                    name.substring(name.indexOf(" "), name.length),
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ),
                Container(
                  width: 65.0,
                  height: 65.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(profile), fit: BoxFit.cover),
                      border: Border.all(color: Colors.grey[900], width: 5.0),
                      borderRadius: BorderRadius.circular(75)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    name.substring(0, name.indexOf(" ")),
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     bottom: 20.0,
                //   ),
                //   child: Text(
                //     name,
                //     style: TextStyle(fontSize: 20.0, color: Colors.white),
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 198.0, left: 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.83,
                color: Colors.grey[850],
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    feedback(Icons.favorite, "Like", index),
                    feedback(Icons.comment, "Comment", index),
                    feedback(Icons.share, "Share", index),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/urth.jpg"),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 135.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, -25.0),
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 5.0,
                                  spreadRadius: 10.0)
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        height: 900.0,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Center(
                              child: pdg(
                                  60,
                                  pdg(
                                      50,
                                      pdg(
                                          40,
                                          CircleAvatar(
                                              radius: 80.0,
                                              backgroundImage: AssetImage(
                                                  "assets/profile.jpg"))))),
                            ),
                            Divider(
                              height: 30.0,
                              indent: 100.0,
                              endIndent: 100.0,
                              color: Colors.grey,
                            ),
                            Text(
                              "Erthugrul Alb",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              height: 30.0,
                              indent: 60.0,
                              endIndent: 60.0,
                              color: Colors.grey,
                            ),
                            //SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 340.0),
                      child: Container(
                        color: Colors.grey[900],
                        child: Column(
                            children: posts.map((f) {
                          return post(f.name, f.profile, f.post, 30.0,
                              posts.indexOf(f));
                        }).toList()),
                      ),
                    )
                  ])
                ]),
              )
            ],
          )),
    );
  }
}
