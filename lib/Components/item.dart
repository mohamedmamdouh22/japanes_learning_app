import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../moduels/number.dart';

class Item extends StatelessWidget {
  Item({required this.number,required this.color});
  final Number number;
  final Color color;
  AudioPlayer audioPlayer =AudioPlayer();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color:color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image container
          Container(
            color:const Color(0xffFFF6DC),
            child:Image.asset(number.image!),
          ),
          //text column
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.japan,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.english,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          //icon
          const Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed:()  {
                try {
                  AudioCache player = AudioCache(
                      prefix: 'assets/sounds/');
                  player.play(number.sound);
                  // now this file will be loaded from assets/audio/explosion.mp3
                }catch(ex)
                {
                  print(ex);
                }
              } ,
              icon: Icon(
                Icons.play_arrow,
                size: 32,
                color: Colors.white,
              ),
            )
          ),
        ],
      ),
    );
  }
}
class Phrase extends StatelessWidget {
  Phrase({required this.number,required this.color});
  final Number number;
  final Color color;
  AudioPlayer audioPlayer =AudioPlayer();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color:color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image container
          //text column
          Container(
            width: 320,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.english,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    maxLines: 2,
                    number.japan,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),
                  ),
                ],
              ),
            ),
          ),
          //icon
          const Spacer(flex: 1,),
          Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed:()  {
                  try {
                    AudioCache player = AudioCache(
                        prefix: 'assets/sounds/');
                    player.play(number.sound);
                    // now this file will be loaded from assets/audio/explosion.mp3
                  }catch(ex)
                  {
                    print(ex);
                  }
                } ,
                icon: Icon(
                  Icons.play_arrow,
                  size: 32,
                  color: Colors.white,
                ),
              )
          ),
        ],
      ),
    );
  }
}
