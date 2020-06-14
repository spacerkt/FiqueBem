import 'package:Fique_Bem/widgets/partner_card_widget.dart';
import 'package:Fique_Bem/widgets/partner_widget.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  ServicesScreen({Key key}) : super(key: key);

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  _ServicesScreenState();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Parceiros"),
                Tab(text: "Postos"),
              ],
            ),
            title: Text("Serviços"),
          ),
          body: TabBarView(
            children: [
              PartnerCardWidget(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}
