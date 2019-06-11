import 'package:flutter/material.dart';

import 'home.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        color: Colors.white,
      ),
      child: ListView(children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Image(
          height: 200,
          image: AssetImage('assets/images/logo.png'),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Insira suas informações \npara continuar',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(50)),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.black,
                  )),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(50)),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.black,
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              child: Text(
                'Fazer Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage())),
            ),
          ),
        ),
      ]),
    ));
  }
}
