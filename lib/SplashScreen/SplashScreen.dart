import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashTimer = 3500;

  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(milliseconds: splashTimer);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [const Color(0xFF04BFBF), const Color(0xFF1C425A)],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 152,
            height: 112,
          ),
          SvgPicture.asset(
            "assets/icons/logo.svg",
            color: Colors.white,
          ),
          Container(
            width: 115,
            height: 111,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/fique_bem.svg",
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
