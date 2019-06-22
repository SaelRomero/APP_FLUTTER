import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes temp')),
      body: ListView(
        children: _crearItemsManeraCorta()
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for (String opcion in opciones) {

      final tempWidget = ListTile(
        title: Text(opcion)
      );

      lista..add(tempWidget)
      ..add(
        Divider(
          height: 10.0,
          color: Colors.blue
        )
      );
    }
    return lista;
  }

    List<Widget> _crearItemsManeraCorta() {
    return  opciones.map((opcion){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opcion),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

  }
}
