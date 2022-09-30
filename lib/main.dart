import 'package:flutter/material.dart';
import 'package:flutterv3/dasar/clipRRect/clip_rect.dart';
import 'package:flutterv3/dasar/clipRRect/imageclipRect.dart';
import 'package:flutterv3/dasar/dasar_flutter.dart';
import 'package:flutterv3/dasar/root_page.dart';
import 'package:flutterv3/navigations/bottom_nav.dart';
import 'package:flutterv3/navigations/google_nav_bar.dart';
import 'package:flutterv3/navigations/nav_bar.dart';
import 'package:flutterv3/pages/splash_page.dart';
import 'package:flutterv3/slicing/chatty.dart';
import 'package:flutterv3/webview/web_view.dart';

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
        '/': (context) => const SplashPage(),
        '/bottomnav': (context) => const BottomNav(),
        '/navigationbar': (context) => const NavBar(),
        '/googlenav': (context) => const GoogleNavBar(),
        '/rootpage': (context) => const RootPage(),
        '/dasar': (context) => const DasarFlutter(),
        '/chatty': (context) => const Chatty(),
        '/webview': (context) => const WebViewPage(),
        '/cliprrect': (context) => const ClipRRectPage(),
        '/imagecliprect': (context) => const ImageclipRect(),
      },
      // home: BottomNav(),
    );
  }
}
