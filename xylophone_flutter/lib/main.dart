import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  Xylophone({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildButton({required int soundNumber, required Color buttonColor}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          color: buttonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildButton(soundNumber: 1, buttonColor: Colors.red),
              buildButton(soundNumber: 2, buttonColor: Colors.orange),
              buildButton(soundNumber: 3, buttonColor: Colors.yellow),
              buildButton(soundNumber: 4, buttonColor: Colors.green),
              buildButton(soundNumber: 5, buttonColor: Colors.greenAccent),
              buildButton(soundNumber: 6, buttonColor: Colors.blue),
              buildButton(soundNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
