import 'package:flutter/material.dart';

import 'pages/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Catalogue formations",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: LoginPage(),
    );  
  }
}
// les widget tous ce qui apparrait a l'ecran build pour construire notre widget
