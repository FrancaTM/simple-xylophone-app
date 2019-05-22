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

    print('Sound number: $soundNumber');
    switch (soundNumber) {
      case 1:
        print('dó');
        break;
      case 2:
        print('ré');
        break;
      case 3:
        print('mi');
        break;
      case 4:
        print('fá');
        break;
      case 5:
        print('sol');
        break;
      case 6:
        print('lá');
        break;
      case 7:
        print('si');
        break;
      default:
        print('NO NOTE');
    }
  }

  Widget _buildFlatButton({Color buttonColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () => _playSound(soundNumber),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildFlatButton(soundNumber: 1, buttonColor: Colors.red),
              _buildFlatButton(soundNumber: 2, buttonColor: Colors.orange),
              _buildFlatButton(soundNumber: 3, buttonColor: Colors.yellow),
              _buildFlatButton(soundNumber: 4, buttonColor: Colors.green),
              _buildFlatButton(soundNumber: 5, buttonColor: Colors.teal),
              _buildFlatButton(soundNumber: 6, buttonColor: Colors.blue),
              _buildFlatButton(soundNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
