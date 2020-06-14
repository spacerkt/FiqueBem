import 'package:Fique_Bem/Widgets/AppBar_widget.dart';
import 'package:Fique_Bem/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Color(0xFF04BFBF), title: AppbarNavigation()),
      body: Text('entrei'),

      // Bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 30),
        height: 50,
        width: 60,
        child: new FloatingActionButton(
            backgroundColor: themeData.canvasColor,
            onPressed: () {},
            child: Container(
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                  color: themeData.canvasColor,
                  onPressed: null,
                  padding: EdgeInsets.all(0.0),
                  child: SvgPicture.asset('assets/icons/awesome-road.svg'),
                ),
              ),
            )),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55.0,
          padding: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 70,
                child: FlatButton(
                    onPressed: () {
                      print("Hello world 1");
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 30,
                          color: themeData.primaryColor,
                        ),
                        Text(
                          "Início",
                          style: themeData.textTheme.bodyText1,
                        )
                      ],
                    )),
              ),
              Container(
                width: 70,
                child: FlatButton(
                    onPressed: () {
                      print("Hello world 1");
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/icons/Explore.svg',
                            color: themeData.primaryColor,
                          ),
                        ),
                        Text(
                          "Serviços",
                          style: themeData.textTheme.bodyText1,
                        )
                      ],
                    )),
              ),
              Container(
                width: 75,
              ),
              Container(
                width: 80,
                child: FlatButton(
                    onPressed: () {
                      print("Hello world 1");
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/icons/Icon awesome-bell.svg',
                            color: themeData.primaryColor,
                          ),
                        ),
                        Text(
                          "Notificações",
                          style: themeData.textTheme.bodyText1,
                        )
                      ],
                    )),
              ),
              Container(
                width: 60,
                child: FlatButton(
                    onPressed: () {
                      print("Hello world 1");
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          size: 30,
                          color: themeData.primaryColor,
                        ),
                        Text(
                          "Ajustes",
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    )),
              ),
            ],
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
