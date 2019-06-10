import 'package:aplicativo/Screens/horario.page.dart';
import 'package:flutter/material.dart';
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
                  backgroundImage: NetworkImage(
                      'https://avatars3.githubusercontent.com/u/19675682?s=460&v=4'),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'http://majatravels.com/wp-content/uploads/2017/01/high-atlas-mountains3-1024x683.jpg'),
              )),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.add_to_home_screen),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Notas e Faltas'),
              trailing: Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      HorarioPage())),
            ),
            ListTile(
              title: Text('Horário'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HorarioPage())),
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage())),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10
        ),
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
        ]
      ),
    );
  }
}