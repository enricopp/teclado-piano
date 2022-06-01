import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  void tocarsom(int numerosom) {
    final player = AudioCache();
    player.play('nota$numerosom.wav');
  }

  Expanded criarBotao({cor, numeroDaNota}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          tocarsom(numeroDaNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: null,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.teal, numeroDaNota: 1),
              criarBotao(cor: Colors.blue, numeroDaNota: 2),
              criarBotao(cor: Colors.yellow, numeroDaNota: 3),
              criarBotao(cor: Colors.red, numeroDaNota: 4),
              criarBotao(cor: Colors.grey, numeroDaNota: 5),
              criarBotao(cor: Colors.pink, numeroDaNota: 6),
              criarBotao(cor: Colors.brown, numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
