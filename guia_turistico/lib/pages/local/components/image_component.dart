import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  
  final String url;

  const ImageComponent({Key key, @required this.url}): super(key: key);

  @override
  Widget build(BuildContext context) {
     Size screenSize = MediaQuery.of(context).size;

    return Image.network(
      this.url,
      width: screenSize.width,
      height: screenSize.height*0.4,
      fit: BoxFit.fill,
    );
  }
}
