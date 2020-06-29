import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/test.dart';

import 'ListItems/GridItemArray.dart';
import 'AnnonceDetailPage.dart';
import 'favoriteAnnonces.dart';

class SaveWidget extends StatefulWidget{
  @override
  _SaveWidgetState createState()=> _SaveWidgetState();
}
class  _SaveWidgetState extends State<SaveWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  bool isSave = true;
}
class Annonces extends StatefulWidget {

  @override
  _AnnoncesState createState() => _AnnoncesState();
}

class _AnnoncesState extends State<Annonces> {


  TextEditingController _textController;
  TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text: }',
    );
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
                    hintText: "Chercher...",
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
            new IconButton(icon: Image.asset("assets/icons/filter.png"),iconSize: 65, onPressed: (){
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
      body: GridView.count(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          crossAxisSpacing: 17.0,
          mainAxisSpacing: 17.0,
          childAspectRatio: 0.999,
          crossAxisCount: 1,
          primary: false,
          children: List.generate(
            gridItemArray.length,
                (index) => ItemGrid(gridItemArray[index]),
          ))
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
class ItemGrid extends StatefulWidget {
  GridItem gridItem;
  ItemGrid(this.gridItem);
  @override
  _ItemGridState createState() => _ItemGridState(gridItem);
}
/// ItemGrid in bottom item "Recomended" item
class _ItemGridState extends State<ItemGrid> {
  /// Get data from HomeGridItem.....dart classman
  GridItem gridItem;
  _ItemGridState(this.gridItem);
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        print ("J'AI TAPEEEEEEEEEEEeee");
        /*Navigator.of(context).push(PageRouteBuilder(
          //  pageBuilder: (_, __, ___) => new detailProduk(gridItem),
            transitionDuration: Duration(milliseconds: 900),

            /// Set animation Opacity in route to detailProduk layout
            transitionsBuilder:
                (_, Animation<double> animation, __, Widget child) {
              return Opacity(
                opacity: animation.value,
                child: child,
              );
            }));*/
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>DetailAnnoncePage(gridItem))
        );
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
          children: [ Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                /// Set Animation image to detailProduk layout
                Hero(
                  tag: "hero-grid-${gridItem.id}",//image
                  child: Material(
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new DetailAnnoncePage(gridItem),
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
                        height: mediaQueryData.size.height / 3.3,
                        width: 450.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0)),
                            image: DecorationImage(
                                image: AssetImage(gridItem.img),
                                fit: BoxFit.cover)),
                        child :
                        Stack(
                          children: [
                            Positioned(
                          right: 10.0,
                          top: 10.0,
                                child:  IconButton(
                                    icon: (_isSaved ? Icon(Icons.bookmark,size: 39,) : Icon(Icons.bookmark_border,size: 39,)),
                                    color: Colors.blue,
                                    onPressed: () async {
                                      setState(() {
                                        _isSaved = true;
                                      });
                                     gridItemFavoriteArray.add(gridItem);
                                    }
                                ),
                            )],
                      ),
                      )
                    ),
                  ),
                ),//images
                Padding(padding: EdgeInsets.only(top: 13.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            gridItem.title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                letterSpacing: 0.5,
                                color: Colors.black54,
                                fontFamily: "Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ],
                  ),


                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    gridItem.price,
                    style: TextStyle(
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            gridItem.rattingValue,
                            style: TextStyle(
                                fontFamily: "Sans",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0),
                          ),
                        ],
                      ),
                      Text(
                        gridItem.itemSale,
                        style: TextStyle(
                            fontFamily: "Sans",
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0),
                      )
                    ],
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
    );
  }
}