import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StayGoodScreen extends StatefulWidget {
  StayGoodScreen({Key key}) : super(key: key);

  @override
  _StayGoodScreenState createState() => _StayGoodScreenState();
}

class _StayGoodScreenState extends State<StayGoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: ListView(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "IMC:",
                            style: TextStyle(
                                color: Color(0xFF0C9494),
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "19",
                            style: TextStyle(
                                color: Color(0xFF06D69B),
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Altura Atual:",
                            style: TextStyle(
                              color: Color(0xFF0C9494),
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "1.65m",
                            style: TextStyle(
                              color: Color(0xFF06D69B),
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.mode_edit,
                            color: Color(0xFF06D69B),
                            size: 10,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Peso:",
                            style: TextStyle(
                              color: Color(0xFF0C9494),
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "65kg",
                            style: TextStyle(
                              color: Color(0xFF06D69B),
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.mode_edit,
                            color: Color(0xFF06D69B),
                            size: 10,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              width: 332,
              height: 167,
              padding: EdgeInsets.fromLTRB(20, 13, 20, 15),
              decoration: BoxDecoration(
                color: Color(0xFF0C9494),
                // .withOpacity(0.65)
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 106,
                          height: 62,
                          child: Image(
                            image: AssetImage("assets/icons/goal.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(
                            'Parabéns!',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'Seu IMC está normal!',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Classificação",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Magreza",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Normal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Sobrepeso",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Obesidade",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Obesidade Grave",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Obesidade",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "I",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "II",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "III",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
              child: Text(
                'Metas disponíveis',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0C9494),
                ),
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
              child: Text(
                'Metas Alcançadas',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0C9494),
                ),
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C).withOpacity(0.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C).withOpacity(0.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C).withOpacity(0.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 329,
              height: 48,
              padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(0xFF05AB7C).withOpacity(0.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Verifique a sua pressão +5pt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "última verificação: 03/03/2019",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        width: 13,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
