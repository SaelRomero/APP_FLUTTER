import 'package:flutter/material.dart';
  
class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://vignette.wikia.nocookie.net/ssbb/images/b/b8/025Pikachu_LG.png/revision/latest?cb=20190520161120&path-prefix=es'),
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
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://los40es00.epimg.net/los40/imagenes/2019/02/28/videojuegos/1551379153_724370_1551379280_noticia_normal.jpg'),
          placeholder: AssetImage('assets/images/loading.gif'),
          fadeInDuration: Duration(microseconds: 200),
        ),
      ),
    );
  }
}