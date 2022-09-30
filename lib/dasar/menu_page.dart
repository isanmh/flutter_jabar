import 'package:flutter/material.dart';
import 'package:flutterv3/dasar/dasar_flutter.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dasar');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const DasarFlutter(),
                //   ),
                // );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const DasarFlutter(),
                //   ),
                // );
              },
              // cara ke 2
              child: const Text('Dasar Flutter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bottomnav');
              },
              child: const Text('Bottom Navigation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/webview');
              },
              child: const Text('Web View'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/navigationbar');
              },
              child: const Text('Navigation Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cliprrect');
              },
              child: const Text('ClipRRect'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/imagecliprect');
              },
              child: const Text('Image diatas ClipRRect'),
            ),
          ],
        ),
      ),
    );
  }
}
