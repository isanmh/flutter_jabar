import 'package:flutter/material.dart';
import 'package:flutterv3/navigations/bottom_nav.dart';
import 'package:flutterv3/navigations/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GoogleNavBar(),
        '/bottomnav': (context) => const BottomNav(),
        '/googlenav': (context) => const GoogleNavBar(),
      },
      // home: BottomNav(),
    );
  }
}
