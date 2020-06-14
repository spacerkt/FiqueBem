import 'package:Fique_Bem/Dashboard/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'SplashScreen/SplashScreen.dart';
import 'theme/themes.dart';

void main() => runApp(App());

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
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Dashboard(),
      },
    );
  }
}
