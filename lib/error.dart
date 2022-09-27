import 'dart:async';

import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  final String? unkownRoute;
  const ErrorPage(this.unkownRoute);
  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error')),
      body:
          Text("The page ${widget.unkownRoute ?? "Unknown"} couldn't be found"),
    );
  }
}
