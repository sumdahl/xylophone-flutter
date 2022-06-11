import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int musicNumber) {
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  //2022-06-11 learnt today important topic of functions.
  Expanded buildKey({Color color, int musicNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(musicNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //main axis alignment is vertical & cross axis alignment is horizontal
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, musicNumber: 1),
              buildKey(color: Colors.orange, musicNumber: 2),
              buildKey(color: Colors.green, musicNumber: 3),
              buildKey(color: Colors.yellow, musicNumber: 4),
              buildKey(color: Colors.teal, musicNumber: 5),
              buildKey(color: Colors.pink, musicNumber: 6),
              buildKey(color: Colors.blue, musicNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
