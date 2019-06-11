import 'package:flutter/material.dart';

class ArquivosPage extends StatefulWidget {
    @override
    _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<ArquivosPage> {
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
                title: Text('Arquivos'),
                backgroundColor: Colors.green[900],
                elevation: 0,
            ),
            body: Container(
                color: Colors.green[900],
                child: Column(children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
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
                                onChanged: changeDropDownItem),
                        ),
                    ),
                    Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            padding: EdgeInsets.all(15),
                            child: ListView(
                                children: <Widget>[
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                    itemArquivo(context),
                                ],
                            ),
                        ),
                    )
                ]),
            ));
    }
}

Widget itemArquivo (BuildContext context) {
    return Card(
        child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text(
                                'Lista de Execício 01',
                                style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Data: 11/06/2019 - 10:50',
                                style: TextStyle(fontSize: 12),
                            ),
                        ],
                    ),
                    Container(
                        child: Center(
                            child: Icon(
                                Icons.file_download,
                                color: Colors.green,
                            ),
                        ),
                    )
                ],
            ),
        ),
    );
}
