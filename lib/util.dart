import 'package:brothers/Page006.dart';
import 'package:brothers/model.dart';
import 'package:brothers/Page007.dart';
import 'package:flutter/material.dart';

Widget field(String hint, bool check, Widget icn, Widget icnp) {
  return Container(
    width: 300,
    child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: icnp,
            suffixIcon: icn,
            hintText: hint,
            labelText: hint,
            labelStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )),
        obscureText: check),
  );
}

Widget text(String txt, double size, FontWeight fnt) {
  return Text(txt,
      style: TextStyle(fontSize: size, fontWeight: fnt, color: Colors.grey));
}

Widget pdg(double rs, Widget child) {
  return CircleAvatar(
      radius: rs, backgroundColor: Colors.grey.withOpacity(0.1), child: child);
}

Widget button(context, txt) {
  return Container(
    width: 180,
    height: 50.0,
    child: FlatButton(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0),),
      onPressed: () {},
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        gradient: LinearGradient(colors: [Colors.grey[800], Colors.grey[900]]),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10.0,
              spreadRadius: 2.0)
        ]),
  );
}
