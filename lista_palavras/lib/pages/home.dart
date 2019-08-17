import 'package:flutter/material.dart';
import 'package:lista_palavras/pages/random_word_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var listView = ListView.builder(
        itemCount: 500,
        itemBuilder: (BuildContext context, int index) {
          return RandomWordWidget();
        },
      );
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Palavras"),
        centerTitle: true,
      ),
      body: listView,
    );
  }
}