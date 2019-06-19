import 'package:flutter/material.dart';
import './aviso.dialog.dart';

Widget avisoCardComponent(BuildContext context, String titulo, String descricao, String botao) {
  return new Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0
        ),
        child: InkWell(
          // onTap: () => print('ok'),
         onTap: () => showDialog(
           context: context,
           builder: (BuildContext context) => CustomDialog(
             title: titulo,
             description: descricao,
             buttonText: botao,
           ),
         ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'AVISO',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                  'Pessoal, assim como fizemos na unidade passada, seguem os links para que vocês preencham quais as atividades que vocês entregaram em cada matéria.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                margin: EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                color: Colors.black12,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Sthefane Soares',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '30/05/2019',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
}
