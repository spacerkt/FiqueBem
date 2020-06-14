import 'package:Fique_Bem/mainScreen/EstradaPelaSaude.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/themes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
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
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
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
                                              style: themeData
                                                  .textTheme.subtitle2
                                                  .merge(
                                                TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w800),
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
                                padding:
                                    const EdgeInsets.only(left: 5, top: 100),
                                child: Text("Meta atual: 200 pts",
                                    style: themeData.textTheme.subtitle1
                                        .merge(TextStyle(fontSize: 12))),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, top: 140),
                                    child: Text(
                                        "Sua Ultima Compra Foi Em Fernandão Oficinas.",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 8))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 140),
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon material-repeat.svg',
                                      color: Color(0XFF06D69B),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 140),
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon material-share.svg',
                                      color: Color(0XFF06D69B),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 140),
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
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              "Valide seus pontos",
                              style: themeData.textTheme.subtitle1.merge(
                                TextStyle(
                                    color: Color(0XFF0C9494), fontSize: 18),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ValidatePoints()),
                              );
                            },
                            child: Card(
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
                                    subtitle: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                          style: themeData.textTheme.subtitle2),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 230, bottom: 10),
                                        child: SvgPicture.asset(
                                          'assets/icons/Icon material-repeat.svg',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 10),
                                        child: SvgPicture.asset(
                                          'assets/icons/Icon material-share.svg',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 10),
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
                                  subtitle: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 230, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
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
                                  subtitle: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 230, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
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
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              "Ganhe pontos",
                              style: themeData.textTheme.subtitle1.merge(
                                TextStyle(
                                    color: Color(0XFF0C9494), fontSize: 18),
                              ),
                            ),
                          ),
                          Card(
                            color: themeData.cardColor,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "FORMULÁRIO CCR:",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "20PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 230, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
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
                            color: themeData.cardColor,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "FORMULÁRIO DE TRIAGEM:",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "3PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 230, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
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
                            color: themeData.cardColor,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "ALIMENTAÇÃO DO DIA:",
                                        style: themeData.textTheme.subtitle1
                                            .merge(TextStyle(fontSize: 16)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "3PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                                        style: themeData.textTheme.subtitle2),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 230, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-repeat.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: SvgPicture.asset(
                                        'assets/icons/Icon material-share.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
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
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              "Histórico",
                              style: themeData.textTheme.subtitle1.merge(
                                TextStyle(
                                    color: Color(0XFF0C9494), fontSize: 18),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: .7,
                            child: Card(
                              color: themeData.cardColor,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  ListTile(
                                    title: Row(
                                      children: <Widget>[
                                        Text(
                                          "3PTS",
                                          style: themeData.textTheme.subtitle1
                                              .merge(TextStyle(fontSize: 16)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 100),
                                          child: Text(
                                            "ALIMENTAÇÃO DO DIA:",
                                            style: themeData.textTheme.subtitle1
                                                .merge(TextStyle(fontSize: 12)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Text("dia 24/03/2020",
                                            style:
                                                themeData.textTheme.subtitle2),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 150, bottom: 10),
                                        child: SvgPicture.asset(
                                          'assets/icons/Icon material-repeat.svg',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 10),
                                        child: SvgPicture.asset(
                                          'assets/icons/Icon material-share.svg',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 10),
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
                          ),
                          SizedBox(
                            height: 40,
                          )
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
