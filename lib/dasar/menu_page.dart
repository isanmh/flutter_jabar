import 'package:flutter/material.dart';
import 'package:flutterv3/dasar/dasar_flutter.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
        ],
      ),
    );
  }
}
