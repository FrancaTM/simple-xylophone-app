import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//Project based on - Xylophone - A Simple Musical Instrument App [https://www.udemy.com/flutter-bootcamp-with-dart/learn/lecture/14483184#questions/7129332]

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                player.play('note1.wav');
              },
              child: Text('play'),
            ),
          ),
        ),
      ),
    );
  }
}
