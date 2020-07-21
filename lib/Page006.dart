import 'package:flutter/material.dart';

import 'package:brothers/util.dart';
import 'package:flutter/material.dart';

class Page006 extends StatefulWidget {
  @override
  _Page006State createState() => _Page006State();
}

class _Page006State extends State<Page006> {
  bool pas = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              text("PLEASE WRITE YOUR INFORMATION", 12.0, FontWeight.normal),
              SizedBox(
                height: 25,
              ),
              text("REGISTER", 22.0, FontWeight.bold),
              SizedBox(
                height: 50,
              ),
              field(
                  "User name",
                  false,
                  null,
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 20.0,
              ),
              field(
                  "Email",
                  false,
                  null,
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 20.0,
              ),
              field(
                  "Password",
                  pas,
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_hide,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        pas = !pas;
                      });
                    },
                  ),
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 100,
              ),
              button(context, "REGISTER"),
              SizedBox(
                height: 25,
              ),
              text("SIGNUP USING FACEBOOK", 12.0, FontWeight.bold),
            ],
          ),
        ),
      ),
    );
  }
}
