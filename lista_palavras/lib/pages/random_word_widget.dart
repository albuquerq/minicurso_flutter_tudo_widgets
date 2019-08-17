import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WordPair palavraAleatoria = WordPair.random();
    return ListTile(title: Text(palavraAleatoria.asPascalCase));
  }
}