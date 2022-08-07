import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:toku/Components/item.dart';

import 'package:toku/moduels/number.dart';

class Family extends StatelessWidget {
  final List<Number> members = const [
    Number(
        japan: 'sofu',
        image: 'assets/images/family_members/family_grandfather.png',
        english: 'Grand Father',
        sound:'family_members/grand father.wav'
    ),
    Number(
        japan: 'sobo',
        image: 'assets/images/family_members/family_grandmother.png',
        english: 'Grand Mother',
        sound:'family_members/grand mother.wav'
    ),
    Number(
        japan: 'chichi',
        image: 'assets/images/family_members/family_father.png',
        english: 'Father',
        sound:'family_members/father.wav'
    ),
    Number(
        japan: 'haha',
        image: 'assets/images/family_members/family_mother.png',
        english: 'Mother',
        sound:'family_members/mother.wav'
    ),
    Number(
        japan: 'ani',
        image: 'assets/images/family_members/family_older_brother.png',
        english: 'Older Brother',
        sound:'family_members/older bother.wav'
    ),
    Number(
        japan: 'ane',
        image: 'assets/images/family_members/family_older_sister.png',
        english: 'Older Sister',
        sound:'family_members/older sister.wav'
    ),
    Number(
        japan: 'musuko',
        image: 'assets/images/family_members/family_son.png',
        english: 'Son',
        sound:'family_members/son.wav'
    ),
    Number(
        japan: 'musume',
        image: 'assets/images/family_members/family_daughter.png',
        english: 'Daughter',
        sound:'family_members/daughter.wav'
    ),
    Number(
        japan: 'otouto',
        image: 'assets/images/family_members/family_younger_brother.png',
        english: 'Young Brother',
        sound:'family_members/younger brohter.wav'
    ),
    Number(
        japan: 'imouto',
        image: 'assets/images/family_members/family_younger_sister.png',
        english: 'Young Sister',
        sound:'family_members/younger sister.wav'
    ),

  ];

  const Family({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff5f862d),
      appBar: AppBar(
        backgroundColor: Color(0xff361832),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Item(number: members[index],color: Color(0xff5f862d),);
        },
        itemCount: members.length,
      ),
    );
  }
}
