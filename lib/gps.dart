import 'dart:async';

import 'package:flutter/material.dart';

class GPSPage extends StatefulWidget {
  @override
  _GPSPageState createState() => _GPSPageState();
}

class _GPSPageState extends State<GPSPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GPS Test')),
      body: Text("GPS"),
    );
  }
}
