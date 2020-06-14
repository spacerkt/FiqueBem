import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'theme/themes.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // Private variable uses _ before the name

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: Dashboard(),
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
      ),
    );
  }
}

class RecentPayments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 241, 241, 241),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row(
                children: <Widget>[
                  Text("Valide seus Pontos",
                      style: themeData.textTheme.bodyText2),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  //color: themeData.primaryColor,
                  height: 150,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(" ESTRADA PARA SAÚDE ",
                                style: themeData.textTheme.subtitle1),
                            Text(" 10PTS ",
                                style: themeData.textTheme.subtitle1),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.",
                                style: themeData.textTheme.subtitle2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  color: Color(0XFF0C9494),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        NameSymbol(),
                                        Spacer(),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        TextCard(),
                                        Spacer(
                                          flex: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 36),
                                          child: CircularPercentIndicator(
                                            backgroundColor: Colors.white,
                                            radius: 60.0,
                                            lineWidth: 5.0,
                                            percent: 0.23,
                                            progressColor: Color(0XFF06D69B),
                                            footer: Text(
                                              "23% da Meta",
                                              style: themeData.textTheme.subtitle2
                                                  .merge(
                                                TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w800),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 100),
                                child: Text("Meta atual: 200 pts",
                                    style: themeData.textTheme.subtitle1
                                        .merge(TextStyle(fontSize: 12))),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 140),
                                    child: Text(
                                        "Sua Ultima Compra Foi Em Fernandão Oficinas.",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 8))),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 50, top: 140),
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon material-repeat.svg',
                                      color: Color(0XFF06D69B),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 140),
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon material-share.svg',
                                      color: Color(0XFF06D69B),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 140),
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon awesome-heart.svg',
                                      color: Color(0XFF06D69B),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text("Valide seus pontos",style: themeData.textTheme.subtitle1.merge(TextStyle(color: Color(0XFF0C9494))),),
                          ),
                          Card(
                            color: Color(0XFF04BFBF),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "ESTRADA PELA SAÚDE",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "10PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle:
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 230,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10  ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon awesome-heart.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Color(0XFF04BFBF),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "DOE SANGUE",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "10PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle:
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 230,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10  ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon awesome-heart.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Color(0XFF04BFBF),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "ESTRADA PELA SAÚDE",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "10PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle:
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 230,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10 ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10,bottom: 10  ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon awesome-heart.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NameSymbol() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: "Saldo:",
          style: themeData.textTheme.subtitle1,
        ),
      ),
    );
  }

  Widget TextCard() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: "47PTS",
                  style: themeData.textTheme.subtitle1
                      .merge(TextStyle(fontSize: 40))),
            ),
          ],
        ),
      ),
    );
  }
}
