import 'package:flutter/material.dart';
  
class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          onPressed: () => _mostrarAlerta(context),
          textColor: Colors.white,
          shape: StadiumBorder(),
        )
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context:  context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la alerta'),
              Divider(),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Aceptar'),
              onPressed:() => Navigator.of(context).pop(),
            ),
          ],  
        );
      }
    );
  }
}