import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.word,this.color,this.ontap});
  String? word;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 80,
        padding: EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        color: color,
        child: Text(
          '$word',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
