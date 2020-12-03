import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blueGrey);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(), //eliminar informacion
        ],
      ),
    ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://i.pinimg.com/originals/4c/03/0d/4c030d10faf7f661419716b4d9f07e55.png'), //cambiar fondo principal
          height: 750.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Clic para entrar',
                      style: estiloTitulo), //cambiar titulos
                  SizedBox(height: 7.0),
                ],
              ),
            ),
            Icon(Icons.menu_book,
                color: Colors.blueGrey, size: 30.0), //cambiar icono y color
          ],
        ),
      ),
    );
  }
}
