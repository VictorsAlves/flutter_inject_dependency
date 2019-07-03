import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:relacionamento_app/src/menu/menu_page.dart';
import 'dart:math' as math;

class DashboardPageDesing extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }

  @override
  State<StatefulWidget> createState() {}
}

class _DashboardPageState extends State<DashboardPageDesing> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  TextStyle _bodyTitleStyle(){
    return TextStyle(
      fontWeight: FontWeight.bold
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text("Escolaridade", style:_bodyTitleStyle()),
            SizedBox(height: 4,),
            Text("Faculdade tal tal tal"),
            SizedBox(height: 16,),

            Text("Ocupação", style:_bodyTitleStyle()),
            SizedBox(height: 4,),
            Text("Desenvolvedor"),
            SizedBox(height: 16,),

            Text("Sobre nome_usuario", style:_bodyTitleStyle()),
            SizedBox(height: 4,),
            Text("Descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição, descrição"),
            SizedBox(height: 16,),

            Text("Itinerarios", style:_bodyTitleStyle()),
            SizedBox(height: 4,),
            Text("Linha Amarela - Butantã/faria lima, 032 - Embu/Pinheiros,"),
            Text("horaios: 16hrs , 22hrs"),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}

final String urlImage =
    "https://st3.depositphotos.com/2398103/13025/v/950/depositphotos_130255316-stock-illustration-person-icon-on-white-background.jpg";

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  //tamanho da app bar
  Size get preferredSize => Size(double.infinity, 250);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        decoration: BoxDecoration(color: Colors.greenAccent, boxShadow: [
          BoxShadow(
              color: Colors.red,
              blurRadius: 20, // raio da elevação da sobra
              offset: Offset(0, 0))
        ]),
        child: Column(children: <Widget>[
          SizedBox(
            // este box faz uma margem no topo da minha column
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => MenuPage()));},
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () { },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  width: 100,
                  height: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(urlImage),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  "Nome do Usuario",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
              ]),
              Column(
                children: <Widget>[
                  Text("Esbarros"),
                  Text(
                    "8",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text("Sexy"),
                  Text(
                    "8",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text("Curtidas"),
                  Text(
                    "8",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child:Padding(
              padding: const EdgeInsets.fromLTRB(0,30,25,0),
              child: Transform.rotate(
                angle:(math.pi*0.06),
                child: MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Text("Editar Perfil"),
                ),
              ),
            ),
             ),
        ]),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height - 70);
    p.lineTo(size.width, size.height);
    p.lineTo(size.width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
