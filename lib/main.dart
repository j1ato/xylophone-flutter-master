import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSounds(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSounds(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.amber, soundNum: 2),
              buildKey(color: Colors.blue, soundNum: 3),
              buildKey(color: Colors.blueGrey, soundNum: 4),
              buildKey(color: Colors.cyan, soundNum: 5),
              buildKey(color: Colors.deepPurple, soundNum: 6),
              buildKey(color: Colors.orange, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
