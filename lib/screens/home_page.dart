import 'package:flutter/material.dart';
import 'package:toku/screens/Numbers_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/phrases_page.dart';
import '../Components/Category.dart';
import 'family_page.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xfffff6dd),
      appBar: AppBar(
        backgroundColor: Color(0xff361832),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            word: 'Numbers',
            color: Color(0xffffa124),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return Numbers();
              }));
            },
          ),
          Category(
              word: 'Family Members',
              color: Color(0xff5f862d),
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return Family();
                }));
              }),
          Category(
            word: 'Colors',
            color: Color(0xffab04b1),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Colour();
              }));
            },
          ),
          Category(
            word: 'Phrases',
            color: Color(0xff00b2d4),
            ontap:() {Navigator.push(context, MaterialPageRoute(builder: (context){
              return Phrases();
            }));
            },
          ),
        ],
      ),
    );
  }
}
