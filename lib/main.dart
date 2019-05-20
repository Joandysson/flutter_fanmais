import 'package:flutter/material.dart';
import 'Screens/home.page.dart';
import 'Screens/login.page.dart';

void main() => runApp(
  MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
    home: LoginPage()
  )
);
