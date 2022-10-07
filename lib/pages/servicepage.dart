import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/albumapi');
              },
              child: const Text('Service get API Global'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/albumpage');
              },
              child: const Text('Album Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/postpage');
              },
              child: const Text('Post Page (API Global)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sliderpage');
              },
              child: const Text('Slider Image Reqresin'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/viewdata');
              },
              child: const Text('SQFlite CRUD'),
            ),
          ],
        ),
      ),
    );
  }
}
