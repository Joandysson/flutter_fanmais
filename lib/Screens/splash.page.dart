import 'package:flutter/material.dart';

import 'login.page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
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
      child: Stack(
        children: <Widget>[
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width - 100,
            margin: EdgeInsets.only(
              bottom: 50,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.only(
              bottom: 50,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          FlatButton(
            child: Text('avançar'),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage())),
          ),
      ]),
    ));
  }
}
