import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  void _redirect(BuildContext context, int number) {
    Timer(Duration(seconds: number), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    _redirect(context, 3);

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
            colorFilter: ColorFilter.mode(
              Colors.green.withOpacity(0.9),
              BlendMode.multiply,
            ),
            image: AssetImage('assets/images/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 100),
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
