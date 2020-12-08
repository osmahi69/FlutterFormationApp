import 'package:flutter/material.dart';
import 'dart:developer';

import '../Cours.dart';
//
final crs = List<Cours>.generate(10, (i) => Cours("Cours logiciel $i", "description", "https://www.alain-bensoussan.com/wp-content/uploads/46763381.jpg"));

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
            },
            leading: Image.network(cours.image),
            title: Text(cours.name),
            subtitle: Row(
              children: [
                Text("19.99€ - 4.5"),
                Icon(Icons.star, size: 12,)
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