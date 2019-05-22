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

//    print('Sound number: $soundNumber');
//    switch (soundNumber) {
//      case 1:
//        print('dó');
//        break;
//      case 2:
//        print('ré');
//        break;
//      case 3:
//        print('mi');
//        break;
//      case 4:
//        print('fá');
//        break;
//      case 5:
//        print('sol');
//        break;
//      case 6:
//        print('lá');
//        break;
//      case 7:
//        print('si');
//        break;
//      default:
//        print('NO NOTE');
//    }
  }

  Widget _buildFlatButton(int soundNumber, Color buttonColor) {
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
    );
  }
}
