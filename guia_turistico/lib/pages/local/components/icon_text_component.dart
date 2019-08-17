import 'package:flutter/material.dart';

class IconTextComponent extends StatelessWidget {

  final String text;
  final IconData icon;

  const IconTextComponent({Key key, @required String this.text="", @required IconData this.icon}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        Text(this.text)
      ],
    );
  }
}