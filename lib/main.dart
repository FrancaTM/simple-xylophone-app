import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//Project based on - Xylophone - A Simple Musical Instrument App [https://www.udemy.com/flutter-bootcamp-with-dart/learn/lecture/14483184#questions/7129332]

void main() {
  runApp(XylophoneApp());
}

enum Notes { doh, re, mi, fa, sol, la, si }

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void _playSound(Notes musicalNote) {
    int soundNumber;
    switch (musicalNote) {
      case Notes.doh:
        soundNumber = 1;
        break;
      case Notes.re:
        soundNumber = 2;
        break;
      case Notes.mi:
        soundNumber = 3;
        break;
      case Notes.fa:
        soundNumber = 4;
        break;
      case Notes.sol:
        soundNumber = 5;
        break;
      case Notes.la:
        soundNumber = 6;
        break;
      case Notes.si:
        soundNumber = 7;
        break;
    }

    player.play('note$soundNumber.wav');
  }

  Widget _buildFlatButton({Color buttonColor, Notes musicalNote}) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () => _playSound(musicalNote),
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
              _buildFlatButton(musicalNote: Notes.doh, buttonColor: Colors.red),
              _buildFlatButton(
                  musicalNote: Notes.re, buttonColor: Colors.orange),
              _buildFlatButton(
                  musicalNote: Notes.mi, buttonColor: Colors.yellow),
              _buildFlatButton(
                  musicalNote: Notes.fa, buttonColor: Colors.green),
              _buildFlatButton(
                  musicalNote: Notes.sol, buttonColor: Colors.teal),
              _buildFlatButton(musicalNote: Notes.la, buttonColor: Colors.blue),
              _buildFlatButton(
                  musicalNote: Notes.si, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
