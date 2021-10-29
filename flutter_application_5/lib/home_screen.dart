import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildKey(color: Colors.red, noteNumber: 1),
            buildKey(color: Colors.orange, noteNumber: 2),
            buildKey(color: Colors.yellow, noteNumber: 3),
            buildKey(color: Colors.green, noteNumber: 4),
            buildKey(color: Colors.teal, noteNumber: 5),
            buildKey(color: Colors.blue, noteNumber: 6),
            buildKey(color: Colors.purple, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}
