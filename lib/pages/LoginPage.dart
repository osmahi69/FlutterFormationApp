import 'package:flutter/material.dart';
import 'dart:developer';

import 'ListPage.dart';

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}


class LoginPage extends StatelessWidget {
  String mail= "";
  String pass= "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page de login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            _buildHeader(),
            SizedBox(height: 15),
            _buildTitle(),
            SizedBox(height: 15),
            _buildForm(context)
          ],
        ) ,
        //child: enfant ca sera colomun
        // widget c'est tt ca va etre notre image, formulaire
      )
    );
  }
  //Fonction création Header page login
  Widget _buildHeader() {
    return new Container(
      child: Image(image: AssetImage('assets/formation.png'),width: 50)
    );
  }

  // Création du titre
  Widget _buildTitle() {
    return new Center(
      child: Text(
        "Connectez vous",
        style: TextStyle(fontSize: 28),
      )
    );
  }
  // Création du formulaire
  Widget _buildForm(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(15),
      child: new Column(
        children: <Widget> [
          new Container(
            child: TextFormField(
              // Récupérer email rentré par utilisateur 
              onChanged: (newText) {mail = newText;},
              validator: EmailFieldValidator.validate,
              decoration: InputDecoration(
                labelText: "Votre email..."
              )
            )
          ),
           new Container(
            child: TextFormField(
              onChanged: (newText) {pass = newText;},
              decoration: InputDecoration(
                labelText: "Votre mot de passe..."
              ),
              obscureText: true,
            )
          ),
          SizedBox(height: 15),
          new Container(
            child: RaisedButton(
              child: Text("login"),
              color: Colors.red,
              onPressed: () {
                if(mail == "demo@gmail.com" && pass == "demo") {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
               }
               else {
                 log("Erreur identification");
               }
              },
            )
          ),
           new Container(
            child: FlatButton(
              child: Text("Mot de passe oublié ?"),
              onPressed: () {
               log("mot de passe oublié");
              },
            )
          )
        ]
      )
    );
  }
}