import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
    @override
    _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {

    List<DropdownMenuItem<String>> _dropDownMenuItems;
    String _currentItemSelected;

    List<DropdownMenuItem<String>> _getDropDownMenuItems() {
        List<DropdownMenuItem<String>> items = new List();
        items.add(DropdownMenuItem(
            value: 'direitos-humanos',
            child: Text('Direitos Humanos e Sustentabilidade'),
        ));

        items.add(DropdownMenuItem(
            value: 'empreendedorismo',
            child: Text('Empreendedorismo'),
        ));

        items.add(DropdownMenuItem(
            value: 'projeto-integrador-iv',
            child: Text('Projeto Integrador IV'),
        ));

        items.add(DropdownMenuItem(
            value: 'qualidade-software',
            child: Text('Qualidade de Software e Desenvolvimento Seguro'),
        ));

        items.add(DropdownMenuItem(
            value: 'relacoes-etnicas',
            child: Text('Rel. Étnico Raciais e Cultura. Afro-brasileira-indígena'),
        ));

        items.add(DropdownMenuItem(
            value: 'tipicos-avancados',
            child: Text('Tópicos Avançados em Desenvolvimento de Web'),
        ));

        return items;
    }

    void changeDropDownItem(String selectedItem) {
        setState(() {
            _currentItemSelected = selectedItem;
        });
    }

    @override
    void initState() {
        _dropDownMenuItems = _getDropDownMenuItems();
        _currentItemSelected = _dropDownMenuItems[0].value;

        super.initState();
    }

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
                child: Column(children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 16
                        ),
                        padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                ),
                                items: _dropDownMenuItems,
                                value: _currentItemSelected,
                                onChanged: changeDropDownItem
                            ),
                        ),
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
                                            left: 16,
                                            right: 16,
                                        ),
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(50),
                                        ),
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
                                            left: 16,
                                            right: 16,
                                        ),
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(20),
                                        ),
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
                ]),
            ));
    }
}
