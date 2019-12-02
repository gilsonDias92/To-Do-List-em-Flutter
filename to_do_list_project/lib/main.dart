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

        //dentro do leading definimos um builder para adcionar o icone
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
            );
          },
        ),
        title: Text('To-Do List'),
        // title nao pode receber texto, tem q receber o
        // widget Text com a string dentro...
      ),

      // renderiza o corpo do app e dentro dele os parametros
      body: Container(
        // espaçamento no container principal para descolar elementos da borda
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        // widgets q precisaam receber um filho, se for mais de um recebe  children
        // renderiza widgets na forma vertical
        // column recebe children pois pode receber varios widgets
        child: Column(
          children: <Widget>[
            Form(
              // prop child é obrigatoria para o form!!

              // row renderiza na forma horizontal, um ao lado do outro.
              // iremos colocar um campo de input e um botao lado a lado
              child: Row(
                children: <Widget>[
                  // input precisa estar dentro de uma definicao de tamanho de campo
                  // expanded utiliza todo o espaço da linha disponivel, só pode ter 1 child
                  Expanded(
                    child: TextFormField(
                      // estiliza o texto do campo
                      style: TextStyle(fontSize: 32, color: Colors.black87),

                      // estiliza o campo
                      decoration: InputDecoration(
                          hintText: 'Type a new task here...',
                          hintStyle: TextStyle(fontSize: 15)),

                      // define o tipo de campo (texto, email, numero)
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    // margin: medida em pixel
                    margin: EdgeInsets.only(left: 20),
                    child: RaisedButton(
                      // raisedbutton vem desabilitado por padrao, precisamos add a funcao onPressed()
                      child: Text(
                        'Add',
                        style: TextStyle(fontSize: 17),
                      ),
                      onPressed: () {
                        print('Botão OK');
                      },
                      // definindo border radius dentro do button
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
