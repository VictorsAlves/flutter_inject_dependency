import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_bloc.dart';
import 'package:relacionamento_app/src/home/home_page.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
              'https://i.pinimg.com/originals/7a/c7/21/7ac7218b398ee2a9430ab9a78e32c0a7.jpg',
              fit: BoxFit.cover),
          Container(
            color: Colors.grey.withOpacity(0.4),
          ),
          SingleChildScrollView(
            child: _LoginContent(),
          )
        ],
      ),
    );
  }
}

class _LoginContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.getBloc<LoginBloc>();

    _butons() {
      return Column(
          children: <Widget>[
      RaisedButton.icon(
      textColor: Colors.white,
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.google),
          label: Text("Login Com Google "),
          onPressed:   ()
      {if (bloc.onClickGoogle() != null ) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      }else print('erro !');},
      ),
      RaisedButton.icon(
      textColor: Colors.white,
      color: Colors.blue,
      icon: Icon(FontAwesomeIcons.facebookF),
      label: Text("Login Com Facebook "),
      onPressed: () {},
      )
      ,
      ]
      ,
      );
    }

    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // configura onde vai começar o alinhamento
        children: <Widget>[
          FlutterLogo(
            size: 71,
          ),
          _butons(),
          Container(
            height: 121,
          ),
        ],
      );
  }
}
