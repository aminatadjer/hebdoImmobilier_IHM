import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;
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

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //     header
            new UserAccountsDrawerHeader(accountName: Text('DOUAIDI Lydia'), accountEmail: Text('gl_douaidi@esi.dz'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage : new AssetImage('asstes/images/profile.jpg') ,
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
                title: Text('Settigns'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.info,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                title: Text('Se déconnecter'),
                leading: Icon(Icons.account_box,color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[

          //new Padding(padding: const EdgeInsets.all(8.0),
          //child: new Text('Categories'),),
          // Horizontal List View Begins here
          // HorizontalList(),
          /*Row(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.all(14.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: new Padding(padding: const EdgeInsets.all(20.0),
                      child: new Text('Annonces ........'),),
                  )),
            ],
          ),*/
          // grid view
          Container(
            height: 320.0,
            //child:
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }


}


class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int currentIndex = 0;
  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return null;
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
      default:
        return null;
    }
  }

  /// Build BottomNavigationBar Widget
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: callPage(currentIndex),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(color: Colors.black26.withOpacity(0.15)))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              fixedColor: Color(0xFF6991C7),
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 23.0,
                    ),
                    title: Text(
                      'home',
                      style: TextStyle(fontFamily: "Berlin", letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shop),
                    title: Text(
                      'brand',
                      style: TextStyle(fontFamily: "Berlin", letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    title: Text(
                        'Cart',
                      style: TextStyle(fontFamily: "Berlin", letterSpacing: 0.5),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      size: 24.0,
                    ),
                    title: Text(
                     'Account',
                      style: TextStyle(fontFamily: "Berlin", letterSpacing: 0.5),
                    )),
              ],
            )),
      );
  }
}