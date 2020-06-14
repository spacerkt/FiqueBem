import 'package:Fique_Bem/scenes/places/servicesScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'theme/themes.dart';

void main() => runApp(MaterialApp(
    routes: {
          '/services': (context) => ServicesScreen(),
    },
    home: App()
));

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.select_all,
                size: 35,
                color: Colors.green[600],
              ),
              onPressed: () {
                print("Hello world");
              },
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "    Meu saldo",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "R\$ 120,00",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                )),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person_add,
                color: Colors.green[600],
                size: 35,
              ),
              onPressed: () {
                print("Hello world");
              },
            )
          ],
        ),

        // Body
        body: Text("wherever"),

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
                       Navigator.of(context).pushNamed('/services');
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 40,
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
                            width: 40,
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