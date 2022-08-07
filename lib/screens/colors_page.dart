import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:toku/Components/item.dart';

import 'package:toku/moduels/number.dart';

class Colour extends StatelessWidget {
  final List<Number> colors = const [
    Number(
        japan: 'aka',
        image: 'assets/images/colors/color_red.png',
        english: 'Red',
        sound:'colors/red.wav'
    ),
    Number(
        japan: 'Burakku',
        image: 'assets/images/colors/color_black.png',
        english: 'Black',
        sound:'colors/black.wav'
    ),
    Number(
        japan: 'chairo',
        image: 'assets/images/colors/color_brown.png',
        english: 'Brown',
        sound:'colors/brown.wav'
    ),
    Number(
        japan: 'Gure',
        image: 'assets/images/colors/color_gray.png',
        english: 'Grey',
        sound:'colors/gray.wav'
    ),
    Number(
        japan: 'midori',
        image: 'assets/images/colors/color_green.png',
        english: 'Green',
        sound:'colors/green.wav'
    ),
    Number(
        japan: 'shiroi',
        image: 'assets/images/colors/color_white.png',
        english: 'White',
        sound:'colors/white.wav'
    ),
    Number(
        japan: 'kiiro',
        image: 'assets/images/colors/yellow.png',
        english: 'Yellow',
        sound:'colors/yellow.wav'
    ),
    Number(
        japan: 'Hokori ppoi Kiiro',
        image: 'assets/images/colors/color_dusty_yellow.png',
        english: 'Dusty Yellow',
        sound:'colors/dusty yellow.wav'
    ),
  ];

  const Colour({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff5f862d),
      appBar: AppBar(
        backgroundColor: Color(0xff361832),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Item(number: colors[index],color: Color(0xffab04b1),);
        },
        itemCount: colors.length,
      ),
    );
  }
}
