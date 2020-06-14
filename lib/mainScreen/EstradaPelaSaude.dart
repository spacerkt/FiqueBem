// import 'package:Fique_Bem/Menu/Menu.dart';
// import 'package:Fique_Bem/NotificationScreen/NotificationScreen.dart';
// import 'package:Fique_Bem/StayGood/StayGood.dart';
// import 'package:Fique_Bem/Widgets/Bottom_navigation_widget.dart';
// import 'package:Fique_Bem/mainScreen/home.dart';
// import 'package:Fique_Bem/scenes/places/servicesScreen.dart';

// import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qrcode_reader/qrcode_reader.dart';

class ValidatePoints extends StatefulWidget {
  ValidatePoints({Key key}) : super(key: key);
  final Map<String, dynamic> pluginParameters = {};

  @override
  _ValidatePointsState createState() => _ValidatePointsState();
}

class _ValidatePointsState extends State<ValidatePoints> {
  // int _currentIndex = 0;
  Future<String> _barcodeString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF04BFBF),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "ESTRADA PELA SAÚDE",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.65,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    color: Color(0x33FFFFFF),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage("assets/icons/empty_image_user.jpg"))),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
            child: Text(
              'instruções de validação',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xFF0C9494),
              ),
            ),
          ),
          Container(
            width: 332,
            height: 201,
            padding: EdgeInsets.fromLTRB(20, 13, 20, 15),
            decoration: BoxDecoration(
              color: Color(0xFF04BFBF),
              // .withOpacity(0.65)
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 264,
              height: 151,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
            width: 332,
            margin: EdgeInsets.only(top: 33, bottom: 20),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF04BFBF), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF04BFBF), width: 1),
                  ),
                  hintStyle: TextStyle(color: Color(0xFF04BFBF)),
                  hintText: 'Insira o Código de validação'),
            ),
          ),
          Text(
            'ou',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C9494),
              fontWeight: FontWeight.w500,
              fontSize: 17,
              letterSpacing: 0.65,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _barcodeString = new QRCodeReader()
                    .setAutoFocusIntervalInMs(200)
                    .setForceAutoFocus(true)
                    .setTorchEnabled(true)
                    .setHandlePermissions(true)
                    .setExecuteAfterPermissionGranted(true)
                    .scan();
              });
            },
            child: Container(
                width: 160,
                height: 160,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  // color: Color(0xFF04BFBF),
                  //
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      'Ler QR code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0C9494),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        letterSpacing: 0.65,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/qr-code.svg",
                      color: Color(0xFF04BFBF),
                    ),
                  ],
                )),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Container(
      //   width: 80,
      //   height: 80,
      //   child: FloatingActionButton(
      //     backgroundColor:
      //         _currentIndex == 2 ? Color(0xFF0C9494) : Color(0xFF04BFBF),
      //     onPressed: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => StayGoodScreen(),
      //       ),
      //     ),
      //     child: SvgPicture.asset(
      //       "assets/icons/logo.svg",
      //       color: Colors.white,
      //       width: 37.17,
      //       height: 28.11,
      //     ),
      //   ),
      // ),
      // bottomNavigationBar:
      //     BottomNavBar(onTap: handleIndexBottom, index: _currentIndex),
    );
  }

  // void handleIndexBottom(int index) {
  //   // Home(),
  //   // ServicesScreen(),
  //   // StayGoodScreen(),
  //   // NotificationScreen(),
  //   // MenuScreen(),
  //   switch (index) {
  //     case 0:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Home()),
  //       );
  //       break;
  //     case 1:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => ServicesScreen(),
  //         ),
  //       );
  //       break;
  //     case 2:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => StayGoodScreen(),
  //         ),
  //       );
  //       break;
  //     case 3:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => NotificationScreen(),
  //         ),
  //       );
  //       break;
  //     case 4:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => MenuScreen(),
  //         ),
  //       );
  //       break;

  //     default:
  //   }
  // }

}
