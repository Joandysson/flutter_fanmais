import 'package:aplicativo/Screens/arquivos.page.dart';
import 'package:aplicativo/Screens/email.page.dart';
import 'package:aplicativo/Screens/home.page.dart';
import 'package:aplicativo/Screens/horario.page.dart';
import 'package:aplicativo/Screens/login.page.dart';
import 'package:aplicativo/Screens/splash.page.dart';
import 'package:aplicativo/Screens/notas.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green
    ),
    home: SplashPage(),
    routes: <String, WidgetBuilder> {
      '/root': (context) => SplashPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/notas': (context) => NotasPage(),
      '/horario': (context) => HorarioPage(),
      '/email': (context) => EmailPage(),
      '/arquivos': (context) => ArquivosPage(),
    },
  )
);