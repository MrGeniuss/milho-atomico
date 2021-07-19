import 'package:flutter/material.dart';
import 'package:modelo_card/Imagem.dart';

class LayoutImagem extends StatefulWidget {
  const LayoutImagem({Key? key}) : super(key: key);

  @override
  _LayoutImagemState createState() => _LayoutImagemState();
}

class _LayoutImagemState extends State<LayoutImagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frango frito!"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("imagens/astronauta.png"),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Delete"),
              color: Colors.amberAccent,
              onPressed: () {
                print("frango frito");
              },
            ),
            Image.asset("imagens/espaco.png"),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Delete"),
              color: Colors.amberAccent,
              onPressed: () {
                print("frango frito");
              },
            ),
            Image.asset("imagens/pin.png"),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Delete"),
              color: Colors.amberAccent,
              onPressed: () {
                print("frango frito");
              },
            ),
            Image.asset("imagens/planeta.png"),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Delete"),
              color: Colors.amberAccent,
              onPressed: () {
                print("frango frito");
              },
            ),
          ],
        ),
      ),
    );
  }
}
