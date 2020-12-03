import 'package:flutter/material.dart';

class Boton1 extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
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
              'https://www.zooplus.es/magazine/wp-content/uploads/2019/10/1-3-1024x707.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Gato Común Europeo', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Felis catus', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.yellow, size: 30.0),
            Text('100', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.pets, 'Familia'),
        _accion(Icons.music_note, 'Sonido'),
        _accion(Icons.more, 'Más'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'El gato común europeo es una raza de gato, como su nombre indica, originario de Europa, probablemente descendiente del gato montés africano y del gato de la jungla. Fue reconocido como raza el 1 de enero de 1983. Los felinos de esta raza son fuertes y cuentan con un sólido sistema inmunológico. Los gatos comunes europeos se adaptan fácilmente a cualquier ambiente. Es fácil verlos en grupo en las calles de nuestras ciudades.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
