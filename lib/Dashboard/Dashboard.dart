import 'package:Fique_Bem/SplashScreen/SplashScreen.dart';
import 'package:Fique_Bem/Widgets/AppBar_widget.dart';
import 'package:Fique_Bem/Widgets/Bottom_navigation_widget.dart';
import 'package:Fique_Bem/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Container(
      child: Text('tela 1'),
    ),
    Container(
      child: Text('tela 2'),
    ),
    Container(
      child: Text('tela 3'),
    ),
    Container(
      child: Text('tela 4'),
    ),
    Container(
      child: Text('tela 5'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF04BFBF), title: AppbarNavigation()),
        body: _children[_currentIndex],

        // Bottom
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            backgroundColor: Color(0xFF0C9494),
            onPressed: () {},
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
              color: Colors.white,
              width: 37.17,
              height: 28.11,
            ),
          ),
        ),
        bottomNavigationBar:
            BottomNavBar(onTap: handleIndexBottom, index: _currentIndex));
  }

  void handleIndexBottom(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
