import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(context),
        _pagina3(context),
        _pagina4(context)
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-2.jpg'), //cambio fondo de pantalla
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 200.0), //cambio altura
          Text('11°', style: estiloTexto),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black, //cambio color fondo
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.white,
          textColor: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Menú', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: () => Navigator.pushNamed(context, 'botones'),
        ),
      ),
    );
  }
}

Widget _pagina3(BuildContext context) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.black, //cambio color fondo
    child: Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.white,
        textColor: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Button', style: TextStyle(fontSize: 20.0)),
        ),
        onPressed: () => Navigator.pushNamed(context, 'boton1'),
      ),
    ),
  );
}

Widget _pagina4(BuildContext context) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.black, //cambio color fondo
    child: Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.white,
        textColor: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Inicio', style: TextStyle(fontSize: 20.0)),
        ),
        onPressed: () => Navigator.pushNamed(context, 'basico'),
      ),
    ),
  );
}
