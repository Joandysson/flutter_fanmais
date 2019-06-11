import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {

  var _currencies = [
    'Direitos Humanos e Sustentabilidade',
    'Empreendedorismo',
    'Projeto Integrador IV',
    'Qualidade de Software e Desenvolvimento Seguro',
    'Rel. Étnico Raciais e Cultura. Afro-brasileira-indígena',
    'Tópicos Avançados em Desenvolvimento de Web',
  ];
  var _currentItemSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enviar E-mail'),
        backgroundColor: Colors.green[900],
        elevation: 0,
      ),
      body: Container(
        color: Colors.green[900],
        child: Column(
          
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
            ),
            )
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(50)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Assunto',
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Mensagem...',
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 10,
                 
            ),
          ),
          Container(
          height: 40,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              child: Text(
                'Enviar',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
              onPressed: () => {},
            ),
          ),
        ),
                ],
                ),
            ),
          )
        ]
      ),
      )
    );
  }
}

