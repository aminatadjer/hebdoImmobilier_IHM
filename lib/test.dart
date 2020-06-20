import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  List<Widget> containers = [
    Container(
      constraints: new BoxConstraints.expand(
        height: 100.0,
      ),
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/back_splash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new Stack(
        children: <Widget>[
          new Positioned(
            right: 5.0,
            top: 400.0,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: new Icon(Icons.near_me,size: 30,color: Colors.blue,),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.blue,
    ),
  ];
  @override
  String text;
  Widget build(BuildContext context) {
    return   DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(''),
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Color(0xFF4668D9),
              labelStyle:TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold) ,
              tabs: <Widget>[
                Tab(
                  text:'Conservation',
                ),
                Tab(
                  text: 'Agence',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        )
    );
  }
}


