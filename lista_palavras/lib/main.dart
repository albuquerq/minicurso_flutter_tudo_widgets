import 'package:flutter/material.dart';
import 'package:lista_palavras/pages/home.dart';

void main() => runApp(ListaPalavasApp());

class ListaPalavasApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lista de Palavras",
      home: Home(),
    );
  }
}