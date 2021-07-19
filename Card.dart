import 'package:flutter/material.dart';
import 'package:modelo_card/Card.dart';

class LayoutCard extends StatefulWidget {
  const LayoutCard({Key? key}) : super(key: key);

  @override
  _LayoutCardState createState() => _LayoutCardState();
}

class _LayoutCardState extends State<LayoutCard> {
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
          children: <Widget>[
            Image.asset("imagens/astronauta.png"),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Back"),
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
