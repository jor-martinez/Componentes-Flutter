import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox( height: 30.0 ,),
          _cardTipo2(),
          SizedBox( height: 30.0 ,),
          _cardTipo1(),
          SizedBox( height: 30.0 ,),
          _cardTipo2(),
          SizedBox( height: 30.0 ,),
          _cardTipo1(),
          SizedBox( height: 30.0 ,),
          _cardTipo2(),
          SizedBox( height: 30.0 ,),
          _cardTipo1(),
          SizedBox( height: 30.0 ,),
          _cardTipo2(),
          SizedBox( height: 30.0 ,),
          _cardTipo1(),
          SizedBox( height: 30.0 ,),
          _cardTipo2(),
          SizedBox( height: 30.0 ,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo de tarjeta'),
            subtitle: Text('Esta es la descripcion de la tarjeta del curso de flutter etc etc lorem'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg'),
            placeholder: AssetImage('assets/jar_loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No se que poner')
          )
        ],
      ),
    );
  }


}