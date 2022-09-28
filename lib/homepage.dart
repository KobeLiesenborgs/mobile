import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone Pre-flight CheckList")),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          ElevatedButton(
              child: Text("Haptic"),
              onPressed: () {
                Navigator.pushNamed(context, '/Haptic');
              }),
          ElevatedButton(
              child: Text("GPS"),
              onPressed: () {
                Navigator.pushNamed(context, '/GPS');
              })
        ]),
        Row(children: <Widget>[
          ElevatedButton(
              child: Text("Camera"),
              onPressed: () {
                Navigator.pushNamed(context, '/Camera');
              }),
          ElevatedButton(
              child: Text("Missing Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/NOPE');
              })
        ]),
        Row(children: <Widget>[
          ElevatedButton(
              child: Text("Rotation"),
              onPressed: () {
                Navigator.pushNamed(context, '/Rotation');
              }),
          ElevatedButton(
              child: Text("Drag"),
              onPressed: () {
                Navigator.pushNamed(context, '/Drag');
              })
        ])
      ]),
    );
  }
}
