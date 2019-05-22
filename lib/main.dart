import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//Project based on - Xylophone - A Simple Musical Instrument App [https://www.udemy.com/flutter-bootcamp-with-dart/learn/lecture/14483184#questions/7129332]

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void _playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Widget _buildFlatButton(int soundNumber, Color buttonColor) {
    return FlatButton(
      color: buttonColor,
      onPressed: () => _playSound(soundNumber),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildFlatButton(1, Colors.red),
                _buildFlatButton(2, Colors.orange),
                _buildFlatButton(3, Colors.yellow),
                _buildFlatButton(4, Colors.green),
                _buildFlatButton(5, Colors.teal),
                _buildFlatButton(6, Colors.blue),
                _buildFlatButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
