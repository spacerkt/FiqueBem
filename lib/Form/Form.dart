import 'package:Fique_Bem/Widgets/AppBar_pageForm.dart';
import 'package:Fique_Bem/Widgets/Dialog.dart';
import 'package:Fique_Bem/Widgets/DropDown.dart';
import 'package:Fique_Bem/Widgets/DropDown2.dart';
import 'package:Fique_Bem/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF04BFBF), title: AppbarNavigationForm()),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Text(
                  "Importância",
                  style: themeData.textTheme.bodyText2
                      .merge(TextStyle(fontSize: 16)),
                ),
              ),
              Container(
                width: 329,
                height: 80,
                padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: themeData.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 264,
                  height: 32,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "tipo de alimentação: pesada, leve, lanche período: matutino, vespertino, noturno",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, left: 18, top: 22),
                child: Text(
                  "ALIMENTAÇÃO DO DIA 14/06/2020",
                  style: themeData.textTheme.bodyText2
                      .merge(TextStyle(fontSize: 16)),
                ),
              ),
              Container(child: MyStatefulWidget()),
              SizedBox(
                height: 20,
              ),
              Container(child: MyStatefulWidget2()),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Adicionar imagem: *",
                    style: themeData.textTheme.bodyText2
                        .merge(TextStyle(fontSize: 12)),
                  ),
                  Center(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0xFF04BFBF),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {
                          print("OK");
                          showDialog(
                              context: context,
                              builder: (contextDialog) {
                                return SuccessDialog('Imagem');
                              });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'O que você comeu hoje?',
                  hintStyle:
                      TextStyle(fontSize: 12.0, color: Color(0XFF0C9494)),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: IconButton(
                  icon: Icon(Icons.check),
                  color: themeData.accentColor,
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "SALVO COM SUCESSO!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                    );
                    Navigator.pop(context, 'Yep!');
                  },
                  iconSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
