import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarNavigationForm extends StatelessWidget {
  const AppbarNavigationForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SvgPicture.asset(
          "assets/icons/alimente.svg",
          color: Colors.white,
        ),
      ),
    );
  }
}
