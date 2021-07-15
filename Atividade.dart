import 'package:terceira_aula/Atividade.dart';
import 'package:flutter/material.dart'; //importe do material design vai escrever
//o metodo main

class Atividade extends StatefulWidget {
  const Atividade({Key? key}) : super(key: key);

  @override
  _AtividadeState createState() => _AtividadeState();
}

class _AtividadeState extends State<Atividade> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.yellow)),
        child: Column(
          //espaçamento antes e depois do objeto
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Text("Digite Seu Email e Senha"),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Digite seu Email"),
                obscureText: false,
                //ao submeter a informação quando clicado no botão
                onSubmitted: (String e) {
                  print("O email foi:" + e);
                },
                controller: _textEditingController,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Digite sua Senha"),
                maxLength: 8,
                obscureText: true,
                //ao submeter a informação quando clicado no botão
                onSubmitted: (String e) {
                  print("A senha foi:" + e);
                },
                controller: _textEditingController,
              ),
            ),
            RaisedButton(
              child: Text("Logar"),
              color: Colors.amberAccent,
              onPressed: () {
                print("Valor foi:" + _textEditingController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
