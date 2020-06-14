import 'package:Fique_Bem/Payment/Payment.dart';
import 'package:Fique_Bem/Widgets/AppBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServicesDetailsScreen extends StatefulWidget {
  ServicesDetailsScreen({Key key}) : super(key: key);

  @override
  _ServicesDetailsState createState() => _ServicesDetailsState();
}

class _ServicesDetailsState extends State<ServicesDetailsScreen> {
  _ServicesDetailsState();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF04BFBF),
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Oficina Fernandão"),
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
          )),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://chiptronic.com.br/blog/wp-content/uploads/2019/06/como-montar-uma-oficina-mec%C3%A2nica.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OFICINA FERNANDÃO",
                    style: new TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF0C9494),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      RatingBar(
                        onRatingUpdate: (value) {},
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 14,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        "14 Avaliações",
                        style: new TextStyle(
                          fontSize: 10.0,
                          color: Color(0xFF7D8585),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "R\$ 300,00",
                      style: new TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFF05AB7C),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFF05AB7C)),
                    ),
                    hintText: 'Adicionar Comentário'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()),
                    );
                  },
                  color: Color(0xFF05AB7C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Text(
                    'USAR PONTOS',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
