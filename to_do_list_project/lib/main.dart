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
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
    );
  }
}
