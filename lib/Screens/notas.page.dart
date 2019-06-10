import 'package:flutter/material.dart';

class NotasFaltasPage extends StatefulWidget {
  @override
  _NotasFaltasPageState createState() => _NotasFaltasPageState();
}

class _NotasFaltasPageState extends State<NotasFaltasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
                left: 16,
                right: 16
              ),
        child: Column(
          children: <Widget>[
            Card(
              
                child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
