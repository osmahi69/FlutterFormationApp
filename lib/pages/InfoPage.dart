import 'package:flutter/material.dart';
import 'dart:developer';
import '../Cours.dart';

class InfoPage extends StatefulWidget {
  final Cours cours;

  const InfoPage({Key key, this.cours}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int selectedTab = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détails du cours"),
        centerTitle: true,
      ),
      body: Center(child: Column(
        children: <Widget>[
        _buildHeader(),
         SizedBox(height: 10),
        _buildInfo(),
        SizedBox(height: 10),
        _buildButton()
        ]
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (int index ) {
          setState(() {
            selectedTab = index;
          });
        },
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
             title: Text("Infos")
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.star),
             title: Text("avis")
            ),
        ],
      ),
    );
  }
  Widget _buildHeader() {
    return new Container(
      child: Image.asset(widget.cours.image)
    );
  }
   Widget _buildInfo() {
    return new Container(
      child: Column(
        children: <Widget>[
           Text(widget.cours.name,
                style: TextStyle(fontSize: 26)
           ),
           Align(
             alignment: Alignment.centerLeft,
             child: Text(widget.cours.description),
           ),
           SizedBox(height: 15),
           Text("19.99€")

           
        ]
      )
    );
  }
  Widget _buildButton() {
    return new Container(
      child: RaisedButton(onPressed: () {
        log("Acheter");
      },
      child: Text("Acheter")
      )
    );
  }
}