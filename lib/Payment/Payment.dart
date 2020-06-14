import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                "        USAR PONTOS",
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 40,
        padding: EdgeInsets.only(left: 18, right: 18),
        margin: EdgeInsets.only(bottom: 30),
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
      body: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.fromLTRB(18, 18, 18, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "50 pontos disponíveis",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Usar pontos",
                          style: TextStyle(
                              color: Color(0xFF04BFBF),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Subtotal:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '300,00',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "desconto de:",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          ' -200,00',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Total:",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          " 100,00",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black26,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PAGAMENTO",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Forma de Pagamento",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "MasterCard **** 8626",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Trocar",
                            style: TextStyle(
                                color: Color(0xFF04BFBF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 200,
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                  hintText: 'CPF/ CNPJ na nota'),
                            ),
                          ),
                          Text(
                            "Adicionar",
                            style: TextStyle(
                                color: Color(0xFF04BFBF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
