import 'package:aplicativo/Screens/email.page.dart';
import 'package:aplicativo/Screens/horario.page.dart';
import 'package:aplicativo/Screens/notas.page.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/Screens/arquivos.page.dart';
import 'login.page.dart';
import 'Components/aviso-card.component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Rafael Barbosa'),
              accountEmail: Text('rafaelbarbosa@acad.fanese.edu.br'),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                    Colors.green[900].withOpacity(0.9),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('assets/images/fanese.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Notas'),
              trailing: Icon(Icons.note_add),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => NotasFaltasPage())),
            ),
            ListTile(
              title: Text('Horário'),
              trailing: Icon(Icons.hourglass_empty),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HorarioPage())),
            ),
            ListTile(
              title: Text('Arquivos'),
              trailing: Icon(Icons.file_download),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ArquivosPage())),
            ),
            ListTile(
              title: Text('Enviar E-mail'),
              trailing: Icon(Icons.email),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => EmailPage())),
            ),
            Divider(),
            ListTile(
              title: Text('Sair'),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage())),
            ),
          ],
        ),
      ),
      body: ListView(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          children: <Widget>[
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
            avisoCardComponent(context),
          ]),
    );
  }
}
