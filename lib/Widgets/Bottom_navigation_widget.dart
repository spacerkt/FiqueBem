import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final Function onTap;
  final int index;
  const BottomNavBar({Key key, this.onTap, this.index}) : super(key: key);

  static const Color notSelectedColor = Color(0xFF04BFBF);
  static const Color selectedColor = Color(0xFF009A93);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      showUnselectedLabels: true,
      selectedItemColor: selectedColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: index == 0 ? selectedColor : notSelectedColor,
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 8,
              color: index == 0 ? selectedColor : notSelectedColor,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Explore.svg',
            color: index == 1 ? selectedColor : notSelectedColor,
          ),
          title: Text(
            'Serviços',
            style: TextStyle(
              fontSize: 8,
              color: index == 1 ? selectedColor : notSelectedColor,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(''),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Icon awesome-bell.svg',
            color: index == 3 ? selectedColor : notSelectedColor,
          ),
          title: Text(
            'Notificações',
            style: TextStyle(
              fontSize: 8,
              color: index == 3 ? selectedColor : notSelectedColor,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: index == 4 ? selectedColor : notSelectedColor,
          ),
          title: Text(
            'ajustes',
            style: TextStyle(
              fontSize: 8,
              color: index == 4 ? selectedColor : notSelectedColor,
            ),
          ),
        ),
      ],
    );
  }
}
