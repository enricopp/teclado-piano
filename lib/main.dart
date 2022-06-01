import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  void tocarsom(int numerosom) {
    final player = AudioCache();
    player.play('nota$numerosom.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(2);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(3);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(4);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(5);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.grey),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(6);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent),
                  child: null,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    tocarsom(7);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.brown),
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
