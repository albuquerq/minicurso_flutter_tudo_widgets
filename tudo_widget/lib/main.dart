import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(App());
}

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  String anyText = "Qualquer valor de texto";
  
  void pressed() {
    super.setState(() {
      anyText = "Outro texto ${math.Random().nextInt(10)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "É tudo Widget",
      home: Scaffold(
        appBar: AppBar(title: Text("É tudo Widget"), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(),
            Text(anyText),
            RaisedButton.icon(
              icon: Icon(Icons.calendar_today),
              label: Text("Aperte nessa porra!"),
              onPressed: pressed,
            ) 
          ]),
        ),
      );
  }
}