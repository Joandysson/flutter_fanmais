import 'package:flutter/material.dart';

class HorarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Seg'),
              Tab(text: 'Ter'),
              Tab(text: 'Qua'),
              Tab(text: 'Qui'),
              Tab(text: 'Sex'),
            ],
          ),
          title: Text('Horário'),
          backgroundColor: Colors.green[900],
        ),
        body: TabBarView(
          children: [
            ListView(children: segundaFeira),
            ListView(children: tercaFeira),
            ListView(children: quartaFeira),
            ListView(children: quintaFeira),
            ListView(children: sextaFeira),
          ],
        ),
      ),
    );
  }
}

List<Widget> segundaFeira = <Widget>[
  semHorario('Sem aulas cadastradas'),
];

List<Widget> tercaFeira = <Widget>[
  elementoHorario('INF068	- Qualidade de Software e Desenvolvimento Seguro',
      'JOÃO KLEBERT BASTOS DE SÁ', '19:00 às 20:25', 'LAB SOFT - 405A'),
  elementoHorario(
    'INF068	- Qualidade de Software e Desenvolvimento Seguro',
    'JOÃO KLEBERT BASTOS DE SÁ',
    '19:00 às 20:25',
    'LAB SOFT - 405A'
  ),
];

List<Widget> quartaFeira = <Widget>[
  elementoHorario(
    'INF068	- Qualidade de Software e Desenvolvimento Seguro',
    'JOÃO KLEBERT BASTOS DE SÁ',
    '19:00 às 20:25',
    'LAB SOFT - 405A'
  ),
];

List<Widget> quintaFeira = <Widget>[
  elementoHorario(
    'INF024 - Tópicos Avançados em Desenvolvimento de Web',
    'STHEFANE CAMILO SOARES DA SILVA',
    '19:00 às 20:25',
    'LAB E-BL A - 405A'
  ),
  elementoHorario(
    'INF024 - Tópicos Avançados em Desenvolvimento de Web',
    'STHEFANE CAMILO SOARES DA SILVA',
    '19:00 às 20:25',
    'LAB E-BL A - 405A'
  ),
  elementoHorario(
    'INF024 - Tópicos Avançados em Desenvolvimento de Web',
    'STHEFANE CAMILO SOARES DA SILVA',
    '19:00 às 20:25',
    'LAB E-BL A - 405A'
  ),
];

List<Widget> sextaFeira = <Widget>[
  elementoHorario(
    'INF024 - Tópicos Avançados em Desenvolvimento de Web',
    'STHEFANE CAMILO SOARES DA SILVA',
    '19:00 às 20:25',
    'LAB E-BL A - 405A'
  ),
  elementoHorario(
    'INF068	- Qualidade de Software e Desenvolvimento Seguro',
    'JOÃO KLEBERT BASTOS DE SÁ',
    '19:00 às 20:25',
    'LAB SOFT - 405A'
  ),
  elementoHorario(
    'INF024 - Tópicos Avançados em Desenvolvimento de Web',
    'STHEFANE CAMILO SOARES DA SILVA',
    '19:00 às 20:25',
    'LAB E-BL A - 405A'
  ),
];

Widget semHorario(String mensagem) {
  return new Container(
    child: Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            mensagem,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}

Widget elementoHorario(
    String disciplina, String docente, String horario, String sala) {
  return new Container(
    margin: EdgeInsets.only(bottom: 15),
    child: Card(
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.centerLeft,
        child: Column(
          children: <Widget>[
            Text(
              disciplina,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(
                docente,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text(horario), Text(sala)],
            )
          ],
        ),
      ),
    ),
  );
}
