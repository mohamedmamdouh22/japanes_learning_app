import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:toku/Components/item.dart';

import 'package:toku/moduels/number.dart';

class Phrases extends StatelessWidget {
  final List<Number> colors = const [
    Number(
        japan: 'Kimasu ka',
        english: 'Are you coming?',
        sound:'phrases/are_you_coming.wav'
    ),
    Number(
        japan: 'O-namae wa nan desu ka',
        english: 'What is your name',
        sound:'phrases/what_is_your_name.wav'
    ),
    Number(
        japan: 'Watashi wa anime ga daisukidesu',
        english: 'I love anime',
        sound:'phrases/i_love_anime.wav'
    ),
    Number(
        japan: 'Watashi wa programming ga daisukidesu',
        english: 'I love programming',
        sound:'phrases/i_love_programming.wav'
    ),
    Number(
        japan: 'Puroguramingu wa kantandesu',
        english: 'Programming is easy',
        sound:'phrases/programming_is_easy.wav'
    ),
    Number(
        japan: 'Dokoh ni kuno',
        english: 'where are you going?',
        sound:'phrases/where_are_you_going.wav'
    ),

    Number(
        japan: 'Hai, ikimasu',
        english: 'yes i am comming',
        sound:'phrases/yes_im_coming.wav'
    ),
  ];

  const Phrases({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff00b2d4),
      appBar: AppBar(
        backgroundColor: Color(0xff361832),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Phrase(number: colors[index],color: Color(0xff00b2d4),);
        },
        itemCount: colors.length,
      ),
    );
  }
}
