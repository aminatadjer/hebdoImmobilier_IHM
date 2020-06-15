import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'AccountPage.dart';
import 'AnnoncesPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return Annonces();
        break;
      case 1:
        return null;
        break;
      case 2:
        return null;
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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100].withOpacity(0.2),
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: ListTile(
              title: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,

                ),
                validator: (value){
                  if(value.isEmpty){
                    return "The search field cannot be empty";
                  }
                  return null;
                },
              ),
            ),
          ),
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.blue,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.filter_list,color: Colors.blue,), onPressed: (){
         //   Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Cart()));
          })
        ],
      ),
      drawer: Container(
        width: 240,
        child: new Drawer(
        child: new ListView(
          children: <Widget>[
            //     header
            new UserAccountsDrawerHeader(accountName: Text('DOUAIDI Lydia'), accountEmail: Text('gl_douaidi@esi.dz'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage : new AssetImage('assets/images/profile.jpg') ,
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.deepOrange,
                image: DecorationImage(
                  image:
                  const AssetImage('assets/images/back_splash.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.98), BlendMode.dstIn),
                )
              ),
            ),
            //      body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Acceuil'),
                leading: Icon(Icons.home,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Mon compte'),
                leading: Icon(Icons.person,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Journal'),
                leading: Icon(Icons.assignment,color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settigns',
                 ),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('A propos '),
                leading: Icon(Icons.info,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                title: Text('Se déconnecter',
                style: TextStyle(color: Colors.grey),),
                leading: Icon(Icons.keyboard_backspace,color: Colors.grey,),
              ),
            ),
          ],
        ),
      )),
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
              icon: Icon(Icons.border_all, size: 30.0,),
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
