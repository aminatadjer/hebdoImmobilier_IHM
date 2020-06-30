
import 'package:flutter/material.dart';



class AjoutAnnoncePage extends StatefulWidget {
    
    AjoutAnnoncePage();
  @override
  _AjoutAnnonceState createState() => _AjoutAnnonceState();
}

class _AjoutAnnonceState extends State<AjoutAnnoncePage> {
  bool _isSaved = false;
  _AjoutAnnonceState() ;
  int currentIndex = 0;
  bool _isLoading = false;
  Widget callPage(int current) {
    switch (current) {
      default:
        return null;
    }
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Center(
          child:  CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title:Text("Annonce Detail Page",
                  style: TextStyle(
                      fontFamily: "Sans",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25.0),),
                backgroundColor: Colors.blue,
                expandedHeight: 300.0,
                flexibleSpace:  FlexibleSpaceBar(
                  title:  Text(
                    "hello"+ "\n"+
                    "4444"+ "\n"+
                    "7676273",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.0),
                  ) ,
                  background: Image.asset("assets/images/profile.jpg"),

                )
              ),
              SliverFixedExtentList(
                itemExtent:140.0,
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top:30),
                    child:
                    Text(
                      'Description du bien ',
                      style: TextStyle(
                          fontFamily: "Sans",
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ),
                Padding(
                padding: const EdgeInsets.only(left: 20.0,top:10),
                  child:
                  Text(
                    'descriptionnnnnnnnnnnn',
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Colors.black26,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
              ),
                ]
                ),
              ),

            ],
          )
        ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFF919191),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        fixedColor: Color(0xFF4668D9),
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 33.0,
              ),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment, size: 30.0,),
            title: Container(
              height: 0.0,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list, size: 33.0,),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: 33.0,
              ),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 33.0,
              ),
              title: Container(
                height: 0.0,
              )),
        ],
      ),
      );
  }
}
