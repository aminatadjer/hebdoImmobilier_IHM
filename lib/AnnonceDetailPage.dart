
import 'package:flutter/material.dart';

import 'AccountPage.dart';
import 'AnnoncesPage.dart';
import 'ConservationAgence.dart';
import 'ListItems/GridItemArray.dart';
import 'VendeurAcheteur.dart';


class DetailAnnoncePage extends StatefulWidget {
    final GridItem grid;
    DetailAnnoncePage(this.grid);
  @override
  _DetailAnnonceState createState() => _DetailAnnonceState(grid);
}

class _DetailAnnonceState extends State<DetailAnnoncePage> {
  bool _isSaved = false;
    final GridItem grid;
    _DetailAnnonceState(this.grid) ;
  int currentIndex = 0;
  bool _isLoading = false;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return Annonces();
        break;
      case 1:
        return VendeurAcheteur();
        break;
      case 2:
        return ExampleScreen();
        break;
      case 3:
        return null;
        break;
      case 4:
        return DestinationView();
        break;
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
                    grid.title+ "\n"+
                    grid.rattingValue+ "\n"+
                    grid.price,
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.0),
                  ) ,
                  background: Image.asset(this.grid.img),

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
                    grid.description,
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
