import 'package:flutter/material.dart';

main() => runApp(MyApp());
// método que inicia o app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // context tem infos sobre a localiz da
    // arvore q o widget é renderizado

    return MaterialApp(
      title: 'To-Do List',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  // statefulwidget implementa metodo createState
  // devolvemos um estado e criamos a classe

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  // stateful retorna um state
  // state executa o build

  @override
  Widget build(BuildContext context) {
    // Scaffold cria a estrutura para um layout
    return Scaffold(
      // O scaffold recebe parametros para criacão da tela

      // renderiza a barra no topo do app
      appBar: AppBar(
        //Widget AppBar recebe parametros
        title: Text('To-Do List'),
        // title nao pode receber texto, tem q receber o
        // widget Text com a string dentro...
      ),

      // renderiza o corpo do app e dentro dele os parametros
      body: Container(
        // widgets q precisaam receber um filho, se for mais de um recebe  children
        // renderiza widgets na forma vertical
        // column rece children pois pode receber varios widgets
        child: Column(
          children: <Widget>[
            Form(
              // prop child é obrigatoria!!

              // row renderiza na forma horizontal, um ao lado do outro.
              // iremos colocar um campo de input e um botao lado a lado
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
