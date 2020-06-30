import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/ListItems/GridItemArray.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../AnnoncesPage.dart';
import '../ConservationAgence.dart';
import '../VendeurAcheteur.dart';
import '../favoriteAnnonces.dart';
import 'AccountPage.dart';
import 'constants.dart';


class EditeProfile extends StatefulWidget {
  @override
  _EditeProfileState createState() => _EditeProfileState();
}
  class _EditeProfileState extends State<EditeProfile> {
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
          return ProfileScreen();
          break;
        default:
          return null;
      }
    }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    var form=Form(
      child:
      SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
          decoration: InputDecoration(
          labelText:"Nom",
          ),
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:"Prénom",
          ),
          ),
          TextFormField(
            decoration: InputDecoration(
            labelText:"Date de naissance",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
            labelText:"Lieu de naissance",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
            labelText:"Adresse",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(padding:
                const EdgeInsets.all(10.0),
                child:SizedBox(


                  height:46.0 ,
                  width: 100.0,
                                  child: RaisedButton(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),

                    ),
                    color: Colors.white,
                    onPressed: (){print('hr');},
                    textColor: Colors.blue,
                    elevation: 5.0,
                    child: Text('Valider'),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
      )
    );
    var header=Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 3),
              IconButton(
                icon:Icon(Icons.home),
              
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditeProfile()),
                    );},
                color:Colors.white,

              ),
              CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              IconButton(
                icon:Icon(Icons.edit),
              
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditeProfile()),
                    );},
                color:Colors.white,

              ),
              SizedBox(height: kSpacingUnit.w * 3),
            ],

          ),
          SizedBox(height: kSpacingUnit.w * 1),
          IconButton(
                icon:Icon(Icons.settings),
              
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()),
                    );},
                color:Colors.white,

              ),



        ],
      );


      
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Container(
        child:
          Container(
            margin: EdgeInsets.only(top:kSpacingUnit.w*1.5),
            child:
            Column(
              children: <Widget>[
                Expanded(child:
                Container(
                  padding: EdgeInsets.only(top:kSpacingUnit.w*1),
                  decoration: BoxDecoration(
                    color:Colors.blueAccent),
                  child:
                    header,
                  ), ),
                Expanded(
                  flex: 2,
                  child:
                  SingleChildScrollView(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*3,),
                  margin: EdgeInsets.only(top:kSpacingUnit.w*1.5),
                  decoration: BoxDecoration(
                    color:Colors.white30),
                  child:
                    form,
                  ),
                  )
                 )
              ],
            ),
          ),
      ) ,
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