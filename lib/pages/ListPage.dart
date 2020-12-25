import 'package:TestApp/pages/InfoPage.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import '../Cours.dart';
//
final crs = List<Cours>.generate(4, (i) => Cours("Cours logiciel $i", "description", "imagesFormations/$i.png"));

 class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar( 
       title: Text("Listes des formations"),
       ),
       body: ListView.separated(
       itemBuilder: (BuildContext context, int index) {
        Cours cours = new Cours (crs[index].name,crs[index].description,crs[index].image);
        return Container(
          height: 70,
          child: ListTile(
            onTap: () {
              // Navigate to cours page details
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPage(cours: cours)),
              );},
            leading: Image.asset(cours.image),
            title: Text(cours.name),
            subtitle: Row(
              children: [
                Text("19.99€ - 4.5"),
                Icon(Icons.star, size: 12)
              ],
          ),
        )
        );
       }, 
       separatorBuilder: (BuildContext context, int index) => Divider(), 
       itemCount: crs.length)

    );
  }
}