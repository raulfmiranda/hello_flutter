import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

  String avatarPicture = 'http://www.iconninja.com/files/162/370/470/humans-person-social-users-profile-friends-account-icon.png';
  String decorationImage = 'https://images.all-free-download.com/images/graphiclarge/rippled_wall_background_01_hd_pictures_169887.jpg';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Widgets app"),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Raul'),
              accountEmail: new Text('exemplo@exemplo.com'),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('Toque na imagem'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(avatarPicture),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(decorationImage)
                )
              ),
            ),
            new ListTile(
              title: new Text("Botões"),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text("Listas"),
              trailing: new Icon(Icons.arrow_forward),
            ),
            Divider(),
            new ListTile(
              title: new Text("Cards"),
              trailing: new Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("Olá Mundo"),
      ),
    );
  }
}