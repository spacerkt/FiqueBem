import 'package:Fique_Bem/Widgets/stations_widget.dart';
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
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Color(0xFF80cbc4),
              child: TabBar(
              indicatorColor: Color(0xFF0C9494),
              tabs: [
                Tab(text: "Parceiros"),
                Tab(text: "Postos"),
              ],
            ),
            )
          ),
          body: TabBarView(
            children: [
              PartnerWidget(),
              StationsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
