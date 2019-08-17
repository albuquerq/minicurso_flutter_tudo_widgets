import 'package:flutter/material.dart';
import 'package:guia_turistico/pages/local/components/icon_text_component.dart';
import 'package:guia_turistico/pages/local/components/image_component.dart';
import 'package:guia_turistico/pages/local/components/title_component.dart';

class LocalPage extends StatefulWidget {
  @override
  _LocalPageState createState() => _LocalPageState();
}

class _LocalPageState extends State<LocalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          ImageComponent(url:"https://i.ebayimg.com/images/g/iH0AAOSwoudbNdpw/s-l300.jpg"),
          TitleComponent(
            title: "Mulher Bonita",
            subtitle: "Lenna",
            stars: 41,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconTextComponent(icon: Icons.phone, text: "Ligar"),
            IconTextComponent(icon: Icons.location_on, text: "Localizacao"),
            IconTextComponent(icon: Icons.share, text: "Compartilhar")
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
            child: Text(
              "Mussum Ipsum, cacilds vidis litro abertis. Manduma pindureta quium dia nois paga. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Mé faiz elementum girarzis, nisi eros vermeio.",
              textAlign: TextAlign.justify,
            ),
          )
        ]),
      ),
    );
  }
}
