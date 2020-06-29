import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'AccountPage.dart';
import 'AnnoncesPage.dart';
import 'ConservationAgence.dart';
import 'ListItems/GridItemArray.dart';
import 'VendeurAcheteur.dart';
import 'favoriteAnnonces.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        return favoritePage(gridItemFavoriteArray);
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
    return Scaffold(
      body: Container(
        child: callPage(currentIndex),
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
