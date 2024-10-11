// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child:
                  Image(image: AssetImage('assets/images/top_right_shde.png'))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/images/event_logo.png')),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image(
                  image: AssetImage('assets/images/bottom_right_shade.png'))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                  image: AssetImage('assets/images/bottom_left_shade.png'))),
        ],
      ),
    );
  }
}
