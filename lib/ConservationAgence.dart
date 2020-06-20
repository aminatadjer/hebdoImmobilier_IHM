
import 'package:flutter/material.dart';

import 'ListItems/AgenceListItem.dart';

class ExampleScreen extends StatelessWidget {

  static TextEditingController _searchController = TextEditingController();
  @override
  String text;
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      tabs: [Text("Conservation",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:  Color(0xFF4668D9))),
                      Text("Agence",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:  Color(0xFF4668D9))),],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                //  color: Color(0xFFF9FBFC),
                  child: Wrap(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 20.0,bottom: 20),
                            child:  Container(
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                child:
                                Center(
                                  child:ListTile(
                                    title: TextFormField(
                                      controller: _searchController,
                                      decoration: InputDecoration(
                                        hintText: "Chercher une conservation...",
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
                                )
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10,top: 8.0,bottom: 20),
                              child: IconButton(icon: Image.asset("assets/icons/filter.png"),iconSize: 65,
                                  onPressed: (){
                                    _ackAlert(context);
                                    //   Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Cart()));
                                  })
                          ),
                        ],
                      ),
                      GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                          mainAxisSpacing: 17.0,
                          crossAxisCount: 1,
                          primary: false,
                          children: List.generate(
                            gridItemArray.length,
                                (index) => ItemGrid(gridItemArray[index]),
                          )),],
                  )
              ),
              SingleChildScrollView(
                //  color: Color(0xFFF9FBFC),
                  child: Wrap(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 20.0,bottom: 20),
                            child:  Container(
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                child:
                                Center(
                                  child:ListTile(
                                    title: TextFormField(
                                      controller: _searchController,
                                      decoration: InputDecoration(
                                        hintText: "Chercher une agence...",
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
                                )
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10,top: 8.0,bottom: 20),
                              child: IconButton(icon: Image.asset("assets/icons/filter.png"),iconSize: 65,
                                  onPressed: (){
                                    AlertDialog(
                                      title: Text('Not in stock'),
                                      content: const Text('This item is no longer available'),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text('Ok'),
                                          onPressed: () {
                                            _ackAlert(context);

                                          },
                                        ),
                                      ],
                                    );
                                    //   Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Cart()));
                                  })
                          ),
                        ],
                      ),
                      GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                          mainAxisSpacing: 17.0,
                          crossAxisCount: 1,
                          primary: false,
                          children: List.generate(
                            gridItemArray.length,
                                (index) => ItemGrid(gridItemArrayConservation[index]),
                          )),],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// ItemGrid in bottom item "Recomended" item
class ItemGrid extends StatelessWidget {
  /// Get data from HomeGridItem.....dart class
  GridItem gridItem;
  ItemGrid(this.gridItem);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
          //  pageBuilder: (_, __, ___) => new detailProduk(gridItem),
            transitionDuration: Duration(milliseconds: 900),

            /// Set animation Opacity in route to detailProduk layout
            transitionsBuilder:
                (_, Animation<double> animation, __, Widget child) {
              return Opacity(
                opacity: animation.value,
                child: child,
              );
            }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 4.0,
                spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
              )
            ]),
        child: Stack(
          children: [
        Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                /// Set Animation image to detailProduk layout
                Hero(
                  tag: "hero-grid-",
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return new Material(
                                color: Colors.black54,
                                child: Container(
                                  padding: EdgeInsets.all(30.0),
                                  child: InkWell(
                                    child: Hero(
                                        tag: "hero-grid-",
                                        child: Image.asset(
                                          gridItem.img,
                                          fit: BoxFit.cover,
                                        )),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                            transitionDuration: Duration(milliseconds: 500)));
                      },
                      child: Container(
                        height: mediaQueryData.size.height / 3.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0)),
                            image: DecorationImage(
                                image: AssetImage(gridItem.img),
                                fit: BoxFit.cover)),

                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    gridItem.adresse,
                    style: TextStyle(
                        fontFamily: "Gotik",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top:30),
                  child: Text(
                     "Tel: " + gridItem.tel,
                    style: TextStyle(
                        fontFamily: "Gothik",
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top:10),
                  child: Text(
                    "Ouvert. Ferme à : " + gridItem.heure,
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ],
        ),
        new Positioned(
          right: 20.0,
          top: 175.0,
          child: Container(
              child: new CircleAvatar(
                  child: new Icon(Icons.near_me,size: 25,color: Colors.blue,),
                  backgroundColor: Colors.white,
              ),
              width: 45.0,
              height: 52.0,
              padding: const EdgeInsets.all(2.0),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                  BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.9),
                  blurRadius: 5.0,
          )]
        ),
          ),
        ),
          ],
        )
      ),
      //ici
    );
  }
}

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Icon(Icons.cancel,color: Colors.blue),
        content: Container(
          height: 40,
          child:  Center(
            child:ListTile(
              title: TextFormField(
               // controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Wilaya...",
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        actions: <Widget>[
          new Expanded(
            child: new Container(
              padding: new EdgeInsets.all(16.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(20.0) ,
                color: Color(0xFF4668D9),
              ),
              child: new Text(
                'Valider',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'helvetica_neue_light',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      );
    },
  );
}