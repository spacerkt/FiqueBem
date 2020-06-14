import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnerCardWidget extends StatefulWidget {
  final String title, description, distance;

  PartnerCardWidget({
    Key key,
    this.title,
    this.description,
    this.distance,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PartnerCardState();
}

class _PartnerCardState extends State<PartnerCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      height: 80,
      width: double.maxFinite,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: new NetworkImage(
                            "https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/256x256/store.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[],
                  ),
                  Text(
                    widget.title,
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF04BFBF),
                    ),
                  ),
                  Text(
                    widget.description,
                    style:
                        new TextStyle(fontSize: 10.0, color: Color(0xFF04BFBF)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[],
                  ),
                  SvgPicture.asset(
                    "assets/icons/localizacao.svg",
                    color: Color(0xFF04BFBF),
                    width: 15,
                    height: 15,
                  ),
                  Text(
                    widget.distance+" Km",
                    style:
                        new TextStyle(fontSize: 10.0, color: Color(0xFF04BFBF)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
