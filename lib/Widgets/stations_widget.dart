import 'package:Fique_Bem/Widgets/partner_card_widget.dart';
import 'package:Fique_Bem/models/Partner.dart';
import 'package:flutter/material.dart';

class StationsWidget extends StatelessWidget {
  List<Partner> nearPartners = List();

  void initPartnerList() {
    nearPartners
        .add(Partner("POSTO DO MARCOS", "Chuveiro, Dormitório", "3,5"));
    nearPartners
        .add(Partner("POSTO DO CARLOS", "Refeição e Dormitório", "10,1"));
  }

  @override
  Widget build(BuildContext context) {
    nearPartners = List();
    initPartnerList();
    return (ListView.builder(
      itemCount: nearPartners.length,
      itemBuilder: (context, index) {
        return PartnerCardWidget(title: nearPartners[index].title,
            description: nearPartners[index].description, distance: nearPartners[index].distance);
      },
    ));
  }
}
