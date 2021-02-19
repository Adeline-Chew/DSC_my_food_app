import 'package:flutter/material.dart';
import 'package:my_food/homepage/landing_page.dart';
import 'package:my_food/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Food',
      home: LandingPage(),
    );
  }
}

