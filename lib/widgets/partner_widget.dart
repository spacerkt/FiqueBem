import 'package:Fique_Bem/Widgets/partner_card_widget.dart';
import 'package:Fique_Bem/models/Partner.dart';
import 'package:flutter/material.dart';

class PartnerWidget extends StatelessWidget {
  List<Partner> nearPartners = List();

  void initPartnerList() {
    nearPartners
        .add(Partner("OFICINA DO FERNANDÃO", "Serviços Automotivos", "3,4"));
    nearPartners
        .add(Partner("ALMOÇO DA NEIDE", "PF, lombinho e muito mais", "4,1"));
    nearPartners.add(Partner("Posto Ipiraba", "Farmácias e CIA", "4,5"));
    nearPartners
        .add(Partner("Supermercado do Kaio", "Horta e Padaria", "5,0"));
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
