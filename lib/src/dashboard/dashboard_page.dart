import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      debugShowCheckedModeBanner: false,

    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {},
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
                  size: 50,
                ),
                onPressed: () {},
              )
            ],
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
