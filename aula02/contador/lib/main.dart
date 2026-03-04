import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const TelaContador());
}

class TelaContador extends StatefulWidget {
  const TelaContador({super.key});

  @override
  State<TelaContador> createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  // AQUI VOCê FAZ A SUA LÓGICA
  int valor = 0;

  void adicionar() {
    setState(() {
      // função para alterar o estado de uma variavel
      valor++; // aumenta o valor em 1
    });
  }

  void diminuir() {
    setState(() {
      // função para alterar o estado de uma variavel
      valor--; // diminui o valor em 1
    });
  }

  void resetar() {
    setState(() {
      // função para alterar o estado de uma variavel
      valor = 0; // reseta o valor
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela Contador"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$valor", style: TextStyle(fontSize: 400)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: adicionar, child: Icon(Icons.add)),
                TextButton(onPressed: diminuir, child: Icon(Icons.remove)),
                TextButton(onPressed: resetar, child: Icon(Icons.restore)),
              ],
            ),
            Image.network("https://i.imgur.com/iV0wH3Z.png", width: 300),
          ],
        ),
      ),
    );
  }
}
