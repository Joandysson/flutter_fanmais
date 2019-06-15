import 'package:flutter/material.dart';

class NotasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
        backgroundColor: Colors.green[900],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16
        ),
        children: <Widget>[
          cardElemento(context, 'Projeto Integrador IV'),
          cardElemento(context, 'Qualidade de Software e Desenvolvimento Seguro'),
          cardElemento(context, 'Tópicos Avançados em Desenvolvimento de Web'),
          cardElemento(context, 'Direitos Humanos e Sustentabilidade'),
          cardElemento(context, 'Empreendedorismo'),
          cardElemento(context, 'Rel. Étnico Raciais e Cultura. Afro-brasileira-indígena'),
        ],
      ),
    );
  }
}

Widget cardElemento(BuildContext context, String disciplina) {
  return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green[700],
              border: Border.all(color: Colors.black12),
            ),
            child: Center(
              child: Text(
                disciplina,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Table(
            children: [
              TableRow(children: [
                quadradoTitulo(context, '1ª'),
                quadradoTitulo(context, '2ª'),
                quadradoTitulo(context, '3ª'),
                quadradoTitulo(context, '4ª'),
                quadradoTitulo(context, 'Média'),
              ]),
              TableRow(children: [
                quadradoTitulo(context, '10.0'),
                quadradoTitulo(context, '10.0'),
                quadradoTitulo(context, '10.0'),
                quadradoTitulo(context, '10.0'),
                quadradoTitulo(context, '10.0'),
              ])
            ],
          ),
        ],
      ));
}

Widget quadradoTitulo(BuildContext context, String titulo) {
  return Container(
    width: MediaQuery.of(context).size.width / 5 - 8,
    height: 25,
    decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
    child: Center(
      child: Text(
        titulo,
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
