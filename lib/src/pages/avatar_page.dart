import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://m.eldiario.es/fotos/Stan-Lee-lanzando-presentacion-Spiderman_EDIIMA20181112_0851_19.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
        title: Text('Avatares'),
        centerTitle: true,
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://staticuestudio.blob.core.windows.net/buhomag/2016/03/22154524/stan.jpg'),
          placeholder: AssetImage('assets/jar_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}