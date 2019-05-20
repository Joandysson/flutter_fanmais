import 'package:flutter/material.dart';

import 'home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
            Colors.green.withOpacity(0.9),
            BlendMode.multiply,
          ),
          image: AssetImage('assets/images/login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(children: <Widget>[
        SizedBox(
          width: 1,
          height: 250,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Matricula',
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20)),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              child: Text(
                'Fazer Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()
                  )
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
