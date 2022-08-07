import 'package:flutter/material.dart';
import 'package:toku/Components/item.dart';
import 'package:toku/moduels/number.dart';

class Numbers extends StatelessWidget {
  final List<Number> numbers = const [
    Number(
        japan: 'ichi',
        image: 'assets/images/numbers/number_one.png',
        english: 'One',
        sound:'numbers/number_one_sound.mp3'
    ),
    Number(
         sound:'numbers/number_two_sound.mp3' ,
        japan: 'ni',
        image: 'assets/images/numbers/number_two.png',
        english: 'Two'),
    Number(
      sound: 'numbers/number_three_sound.mp3',
        japan: 'san',
        image: 'assets/images/numbers/number_three.png',
        english: 'Three'),
    Number(
      sound: 'numbers/number_four_sound.mp3',
        japan: 'yon',
        image: 'assets/images/numbers/number_four.png',
        english: 'Four'),
    Number(
      sound: 'numbers/number_five_sound.mp3',
        japan: 'go',
        image: 'assets/images/numbers/number_five.png',
        english: 'Five'),
    Number(
      sound: 'numbers/number_six_sound.mp3',
        japan: 'roku',
        image: 'assets/images/numbers/number_six.png',
        english: 'Six'),
    Number(
      sound: 'numbers/number_seven_sound.mp3',
        japan: 'nana',
        image: 'assets/images/numbers/number_seven.png',
        english: 'Seven'),
    Number(
      sound: 'numbers/number_eight_sound.mp3',
        japan: 'hachi',
        image: 'assets/images/numbers/number_eight.png',
        english: 'Eight'),
    Number(
      sound: 'numbers/number_nine_sound.mp3',
        japan: 'kyu',
        image: 'assets/images/numbers/number_nine.png',
        english: 'Nine'),
    Number(
      sound: 'numbers/number_ten_sound.mp3',
        japan: 'ju',
        image: 'assets/images/numbers/number_ten.png',
        english: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xfffff6dd),
        appBar: AppBar(
          backgroundColor: Color(0xff361832),
          title: Text('Numbers'),
        ),
        body: ListView.builder(
          itemBuilder: (context,index){
            return Item(number: numbers[index],color:Colors.orange ,);
          },
          itemCount: numbers.length,
        ));
  }
}
