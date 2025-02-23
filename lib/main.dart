import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }


  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Rectangular corners
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''), // No label is needed if not desired
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
              buildKey(color: Color(0xFFFFADAD), soundNumber: 1),
              buildKey(color: Color(0xFFFFD6A5), soundNumber: 2),
              buildKey(color: Color(0xFFFDFFB6), soundNumber: 3),
              buildKey(color: Color(0xFFCAFFBF), soundNumber: 4),
              buildKey(color: Color(0xFF9BF6FF), soundNumber: 5),
              buildKey(color: Color(0xFFA0C4FF), soundNumber: 6),
              buildKey(color: Color(0xFFBDB2FF), soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
