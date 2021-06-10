import 'package:flutter/material.dart';
import 'package:portfolio/UI/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raunak Kumar',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
