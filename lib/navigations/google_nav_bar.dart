import 'package:flutter/material.dart';
import 'package:flutterv3/dasar/root_page.dart';
import 'package:flutterv3/pages/aboutpage.dart';
import 'package:flutterv3/pages/homepage.dart';
import 'package:flutterv3/pages/servicepage.dart';
import 'package:flutterv3/pages/settingpage.dart';
import 'package:flutterv3/slicing/chatty.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({Key? key}) : super(key: key);

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int currentPage = 0;

  List<Widget> pages = [
    // const HomePage(),
    const RootPage(),
    // const AboutPage(),
    const Chatty(),
    const ServicePage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: GNav(
            onTabChange: (index) {
              setState(() {
                currentPage = index;
              });
            },
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple.shade800,
            padding: const EdgeInsets.all(16),
            tabBorderRadius: 30,
            // duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOutExpo,
            // iconSize: 24,
            // tabBorder: Border.all(
            //   color: Colors.deepPurple.shade800,
            //   width: 1,
            // ),
            tabBackgroundGradient: const LinearGradient(
              colors: [
                Color(0xFFD661E0),
                Colors.deepPurpleAccent,
              ],
            ),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            haptic: true,
            // tabShadow: const [
            //   BoxShadow(
            //     color: Colors.deepPurple,
            //     blurRadius: 4,
            //     offset: Offset(0, 3),
            //   ),
            // ],

            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.people,
                text: 'About',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Services',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      body: pages[currentPage],
    );
  }
}
