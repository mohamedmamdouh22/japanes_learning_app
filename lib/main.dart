import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

void main() {
  runApp( Toku());
}
class Toku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
