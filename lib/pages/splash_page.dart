import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // logika loading Splash
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacementNamed(context, '/googlenav'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // SizedBox(
            //   width: 100,
            //   height: 100,
            //   child: Image.asset('assets/images/profile.png'),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // const CircularProgressIndicator(
            //   color: Colors.white,
            // ),
            // DefaultTextStyle(
            //   style: const TextStyle(
            //     fontSize: 30.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   child: AnimatedTextKit(
            //     animatedTexts: [
            //       WavyAnimatedText('Wait Please...'),
            //       WavyAnimatedText('Loading...'),
            //     ],
            //     isRepeatingAnimation: true,
            //     onTap: () {},
            //   ),
            // ),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
