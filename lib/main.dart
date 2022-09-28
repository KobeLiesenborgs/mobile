import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mobile_test_1/drag.dart';

import 'homepage.dart';
import 'haptic.dart';
import 'camera.dart';
import 'gps.dart';
import 'error.dart';
import 'rotation.dart';
import 'drag.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (context) => HomePage(),
          '/Haptic': (context) => HapticPage(),
          '/Camera': (context) => CameraPage(),
          '/GPS': (context) => GPSPage(),
          '/Rotation': (context) => RotationPage(),
          '/Drag': (context) => ExampleDragAndDrop()
        },
        onUnknownRoute: (RouteSettings settings) {
          String? unknownRoute = settings.name;
          return new MaterialPageRoute(
              builder: (context) => ErrorPage(unknownRoute));
        });
  }
}
