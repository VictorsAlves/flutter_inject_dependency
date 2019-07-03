import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPage createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  bool isCollapsed = true;

  TextStyle _titleStyle() {
    return TextStyle(color: Colors.white, fontSize: 22);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Stack(
          children: <Widget>[
            menu(context),
          ],
        ));
  }

  Widget menu(context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Minha Conta",
              style: _titleStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Home",
              style: _titleStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Menssagens",
              style: _titleStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Configurações",
              style: _titleStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
