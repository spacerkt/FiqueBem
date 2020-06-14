import 'package:flutter/material.dart';

class PartnerCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          image:
                              new NetworkImage("https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/256x256/store.png"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
