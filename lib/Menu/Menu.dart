import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    List<MenuItem> _menuItem = <MenuItem>[
      MenuItem(
        "assets/icons/share.svg",
        "Seu Ranking",
      ),
      MenuItem(
        "assets/icons/share.svg",
        "Compartilhar o app",
      ),
      MenuItem(
        "assets/icons/about.svg",
        "Sobre",
      ),
      MenuItem(
        "assets/icons/rated.svg",
        "Classificar o app",
      ),
      MenuItem(
        "assets/icons/feedback.svg",
        "Enviar opinião",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
          Column(
            children: _menuItem
                .map(
                  (item) => FlatButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 17.5, 25, 17.5),
                            child: SvgPicture.asset(item.icon)),
                        Text(
                          item.label,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF313D3C)),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Container(
            margin: EdgeInsets.only(top: 17.5),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 1.0, color: const Color(0xFFF5F5F5))),
            ),
            child: FlatButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 35, 25, 35),
                      child: SvgPicture.asset("assets/icons/leave.svg")),
                  Text(
                    "Sair do App",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0C9494),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String label;

  MenuItem(this.icon, this.label);
}
