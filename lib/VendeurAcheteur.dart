import 'package:flutter/material.dart';


class VendeurAcheteur extends StatefulWidget {

  @override
  _VendeurAcheteurState createState() => _VendeurAcheteurState();
}

class _VendeurAcheteurState extends State<VendeurAcheteur> {
  static int frais_enregi  = 0;
  static int frais_public  = 0;
  static int total  = 0;
  static int horaire_notaire  = 0;
 static TextEditingController _searchController = TextEditingController();
  TextEditingController _textController;
  List<Widget> containers = [


    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      tabs: [new Text("Vendeur",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:  Color(0xFF4668D9))),
                      new Text("Acheteur",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Color(0xFF4668D9)))],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30,right: 30,left: 30),
                            child: Container(
                              height: 50.0,
                              width: 270.0,
                              color: Colors.transparent,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  child:
                                  Center(
                                    child:ListTile(
                                      title: TextFormField(
                                        controller: _searchController,
                                        decoration: InputDecoration(
                                          hintText: "Valuer déclarée...",
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
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 23),
                              child:  new Image.asset("assets/icons/filter.png", width: 40,height: 70,)
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Frais d'enregistrement",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( frais_enregi.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Frais de publication",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( frais_public.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Total",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( total.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Horaire notaire",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( horaire_notaire.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                      )
                    ],)
              ),
              SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30,right: 30,left: 30),
                            child: Container(
                              height: 50.0,
                              width: 260.0,
                              color: Colors.transparent,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  child:
                                  Center(
                                    child:ListTile(
                                      title: TextFormField(
                                        controller: _searchController,
                                        decoration: InputDecoration(
                                          hintText: "Valuer déclarée...",
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
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 23),
                              child: new Image.asset("assets/icons/filter.png",
                                width: 40,height: 70,)
                            /*IconButton(icon: Icon(Icons.swap_horizontal_circle,color: Color(0xFF4668D9),size: 50,),
                     onPressed: (){
                   //   Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Cart()));
                 })*/
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Frais d'enregistrement",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( frais_enregi.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Frais de publication",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( frais_public.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Total",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( total.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          color: Colors.transparent,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child:new Text("Horaire notaire",
                                      style: TextStyle(color: Colors.black, fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,) ,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child:new Text( horaire_notaire.toString() + " DZD",
                                        style: TextStyle(color: Color(0xFF4668D9),
                                            fontSize: 22,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center) ,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                      )
                    ],)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
