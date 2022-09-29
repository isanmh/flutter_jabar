// stateful widget
import 'package:flutter/material.dart';
import 'package:flutterv3/dasar/menu_page.dart';
import 'package:flutterv3/dasar/profile_page.dart';
import 'package:flutterv3/pages/aboutpage.dart';
import 'package:flutterv3/pages/homepage.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // ini untuk bottom nav bar
  int currentPage = 0;

  // list view
  List<Widget> pages = const [
    MenuPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Flutter Training'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Tombol Tekan !');
        },
        child: const Icon(Icons.add),
      ),

      // Bottom Nagivation Bar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        // untuk destination yang dipilih
        onDestinationSelected: (int index) {
          // debugPrint('index : $index');
          setState(() {
            currentPage = index;
          });
        },
        // selected index
        selectedIndex: currentPage,
      ),

      // body
      // body: const HomePage(),
      body: pages[currentPage],
    );
  }
}
