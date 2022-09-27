import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class HapticPage extends StatefulWidget {
  @override
  _HapticPageState createState() => _HapticPageState();
}

class _HapticPageState extends State<HapticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Haptic Test')),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Press to buzz"),
                  onPressed: () {
                    Vibration.vibrate();
                  },
                  
                )
              ]),
        ));
  }
}
