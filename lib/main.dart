import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int musicNumber) {
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  playSound(1);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  playSound(2);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  playSound(3);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  playSound(4);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  playSound(5);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  playSound(6);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
