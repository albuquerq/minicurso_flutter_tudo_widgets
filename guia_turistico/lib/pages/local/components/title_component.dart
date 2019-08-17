import 'package:flutter/material.dart';

class TitleComponent extends StatefulWidget {
  final String title, subtitle;
  final int stars;

  TitleComponent(
      {Key key,
      @required String this.title = "",
      @required String this.subtitle = "",
      int this.stars = 0})
      : super(key: key);

  @override
  _TitleComponentState createState() => _TitleComponentState();
}

class _TitleComponentState extends State<TitleComponent> {
  bool isSatrred = false;

  void starred() {
    setState(() {
      isSatrred = !isSatrred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(children: <Widget>[
              Text(
                this.widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                this.widget.subtitle,
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
            ], crossAxisAlignment: CrossAxisAlignment.start),
          ),
          GestureDetector(
              child: Icon(
                (isSatrred ? Icons.star : Icons.star_border),
                color: Colors.red,
              ),
              onTap: starred),
          Text(this.widget.stars.toString(),
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
