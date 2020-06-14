import 'package:Fique_Bem/Menu/Menu.dart';
import 'package:Fique_Bem/NotificationScreen/NotificationScreen.dart';
import 'package:Fique_Bem/StayGood/StayGood.dart';
import 'package:Fique_Bem/Widgets/AppBar_widget.dart';
import 'package:Fique_Bem/Widgets/Bottom_navigation_widget.dart';
import 'package:Fique_Bem/scenes/places/servicesScreen.dart';
import 'package:Fique_Bem/mainScreen/home.dart';
import 'package:Fique_Bem/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 2;
  PageController controllerPageView;

  @override
  void initState() {
    super.initState();
    controllerPageView = PageController(initialPage: _currentIndex);
  }

  final List<Widget> _children = [
    Home(),
    ServicesScreen(),
    StayGoodScreen(),
    NotificationScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF04BFBF), title: AppbarNavigation()),
        body: PageView(
          controller: controllerPageView,
          onPageChanged: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          children: _children,
        ),

        // Bottom
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            backgroundColor:
                _currentIndex == 2 ? Color(0xFF0C9494) : Color(0xFF04BFBF),
            onPressed: () => setState(() {
              controllerPageView.jumpToPage(2);
            }),
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
      controllerPageView.jumpToPage(index);
    });
  }
}
