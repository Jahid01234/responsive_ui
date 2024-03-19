import 'package:flutter/material.dart';
import 'package:responsive_ui/HomePage.dart';
import 'package:responsive_ui/desktop_device.dart';
import 'package:responsive_ui/moblie_device.dart';
import 'package:responsive_ui/tablet_device.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(
        moblie_device: MoblieDevice(),
        tablet_device: TabletDevice(),
        desktop_device: DesktopDevice(),
      ),
    );
  }
}

