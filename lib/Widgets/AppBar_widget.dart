import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarNavigation extends StatelessWidget {
  const AppbarNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 49,
            height: 49,
          ),
          SvgPicture.asset(
            "assets/icons/fique_bem.svg",
            color: Colors.white,
          ),
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
                color: Color(0x33FFFFFF),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/empty_image_user.jpg"))),
          ),
        ],
      ),
    );
  }
}
