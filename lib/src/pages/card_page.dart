import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(children: <Widget>[
      ListTile(
        contentPadding: EdgeInsets.all(20.0),
        title: Text('Hola',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            )),
        subtitle: Text(
          'Esta es la descripcion de la tarjeta mostrada desde el parametro subtitle de la clase LisTile',
          textAlign: TextAlign.justify,
        ),
        leading: Icon(
          Icons.photo_album,
          color: Colors.blue,
          size: 60.0,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(child: Text('Cancelar'), onPressed: () {}),
          FlatButton(child: Text('Ok'), onPressed: () {})
        ],
      )
    ]));
  }

  Widget _cardTipo2() {
    final card =  Container(
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2018/03/09/articles/2017_8/landscape_photography.jpg'),
            placeholder: AssetImage('assets/images/loading.gif'),
            fadeInDuration: Duration(microseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://static.photocdn.pt/images/articles/2018/03/09/articles/2017_8/landscape_photography.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Hola mundo!!!'),
          )
        ],
      ),
    );

    return Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.red, blurRadius: 10.0, spreadRadius: 2.0,)

        ]
      ),
      child: ClipRRect(child: card, borderRadius: BorderRadius.circular(30.0),),
     
    );
  }
}
