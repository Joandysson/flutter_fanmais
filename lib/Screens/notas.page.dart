import 'package:flutter/material.dart';


class NotasFaltasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
          backgroundColor: Colors.green[900],
      ),
      body: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
            cardElemento(context),
          ],
        ),
    );
  }
}

Widget cardElemento (BuildContext context) {
  return Card(
              elevation: 5,
                child: Column(
              children: <Widget>[
                Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Tópicos Avançados em Desenvolvimento de Web',
                        style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold
                              ),),
                      ),
                    ),
                Row(
                  children: <Widget>[
                    quadradoTitulo(context, '1ª'),
                    quadradoTitulo(context, '2ª'),
                    quadradoTitulo(context, '3ª'),
                    quadradoTitulo(context, '4ª'),
                    quadradoTitulo(context, 'Média'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    quadradoTitulo(context, '1ª'),
                    quadradoTitulo(context, '2ª'),
                    quadradoTitulo(context, '3ª'),
                    quadradoTitulo(context, '4ª'),
                    quadradoTitulo(context, 'Média'),
                  ],
                ),
              ],
            ),
            );
}

Widget quadradoTitulo (BuildContext context, String titulo) {
  return Container(
    width: MediaQuery.of(context).size.width / 5 - 8,
    height: 25,
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
  );
}