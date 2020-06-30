import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/ListItems/GridItemArray.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../AnnoncesPage.dart';
import '../ConservationAgence.dart';
import '../VendeurAcheteur.dart';
import '../favoriteAnnonces.dart';
import 'EditProfile.dart';
import 'ajoutAnnonce.dart';
import 'constants.dart';
import 'contact.dart';
import 'journal.dart';
import 'langue.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
  class _ProfileScreenState extends State<ProfileScreen> {
  createLanguageDialog(BuildContext context){
    return showDialog(context: context,builder:(context){
      return AlertDialog(
        title: Text('    Choisir une Langue'),
        content: 
        Container(
          height:100,
          child:
          Column(  
            children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.blue)),
              color: Colors.white,
              textColor: Colors.blue,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                        "Français",
                        style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.blue)),
              color: Colors.white,
              textColor: Colors.blue,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                        "Arabe",
                        style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
            ),
             
                
            ]
            
          ),
        ),
          
        
                
            
        actions: <Widget>[
          MaterialButton(
            color: Colors.blue,
            onPressed: (){Navigator.of(context).pop();},
            elevation: 5.0,
            child: Text('valider'),
          )
        ],
      );
    });
  }
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
    var header=Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 3),
              IconButton(
                icon:Icon(Icons.home,size: 30,),
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AjoutAnnoncePage()),
                    );},
                color:Colors.white,

              ),
              CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              IconButton(
                icon:Icon(Icons.edit,size: 30,),
              
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
                icon:Icon(Icons.settings,size: 30,),
                onPressed: (){},
                //size: ScreenUtil().setSp(kSpacingUnit.w * 2),
                color:Colors.white,
              ),
        ],
      );


      var list=Expanded(child: 
                  ListView(
                    children:<Widget>[
                      Container(
      
      height: kSpacingUnit.w*5.5,
      margin:
      EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w*4,
      ).copyWith(
        bottom:kSpacingUnit.w*2,
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*2,),
      decoration:
      
       BoxDecoration(
         boxShadow:[BoxShadow(
        color: Colors.grey[100],
        offset: Offset(2.0,2.0),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ),],
         
        borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
        color:Colors.white10,),
      child: Row(
        children:<Widget>[
          Icon(
            LineAwesomeIcons.journal_of_the_whills,
            size:kSpacingUnit.w*2.5
            ),
          SizedBox(width:kSpacingUnit.w*2.5),
          Text("Journal",
          style:kTitleTextStyle.copyWith(
            fontWeight:FontWeight.w500,
          ) ,
          ),
          Spacer(),
          IconButton(
                icon:Icon(LineAwesomeIcons.angle_right,size:kSpacingUnit.w*2.5,),     
                onPressed: (){
                    Navigator.push(
                      context,   
                      MaterialPageRoute(builder: (_) => Journal()),
                    );},

              ),
         


        ],
      ),
    ),

    Container(
      
      height: kSpacingUnit.w*5.5,
      margin:
      EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w*4,
      ).copyWith(
        bottom:kSpacingUnit.w*2,
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*2,),
      decoration:
      
       BoxDecoration(
         boxShadow:[BoxShadow(
        color: Colors.grey[100],
        offset: Offset(2.0,2.0),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ),],
         
        borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
        color:Colors.white10,),
      child: Row(
        children:<Widget>[
          Icon(
            LineAwesomeIcons.language,
            size:kSpacingUnit.w*2.5
            ),
          SizedBox(width:kSpacingUnit.w*2.5),
          Text("Langue",
          style:kTitleTextStyle.copyWith(
            fontWeight:FontWeight.w500,
          ) ,
          ),
          Spacer(),
          IconButton(
                icon:Icon(LineAwesomeIcons.angle_right,size:kSpacingUnit.w*2.5,),     
                onPressed: (){ createLanguageDialog(context);},
              ),
        ],
      ),
    ),
    Container(
      
      height: kSpacingUnit.w*5.5,
      margin:
      EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w*4,
      ).copyWith(
        bottom:kSpacingUnit.w*2,
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*2,),
      decoration:
      
       BoxDecoration(
         boxShadow:[BoxShadow(
        color: Colors.grey[100],
        offset: Offset(2.0,2.0),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ),],
         
        borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
        color:Colors.white10,),
      child: Row(
        children:<Widget>[
          Icon(
            LineAwesomeIcons.phone,
            size:kSpacingUnit.w*2.5
            ),
          SizedBox(width:kSpacingUnit.w*2.5),
          Text("Contact",
          style:kTitleTextStyle.copyWith(
            fontWeight:FontWeight.w500,
          ) ,
          ),
          Spacer(),
          IconButton(
                icon:Icon(LineAwesomeIcons.angle_right,size:kSpacingUnit.w*2.5,),     
                onPressed: (){
                    Navigator.push(
                      context,   
                      MaterialPageRoute(builder: (_) => ContactUs()),
                    );},

              ),
         


        ],
      ),
    ),
    Container(
      
      height: kSpacingUnit.w*5.5,
      margin:
      EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w*4,
      ).copyWith(
        bottom:kSpacingUnit.w*2,
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*2,),
      decoration:
      
       BoxDecoration(
         boxShadow:[BoxShadow(
        color: Colors.grey[100],
        offset: Offset(2.0,2.0),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ),],
         
        borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
        color:Colors.white10,),
      child: Row(
        children:<Widget>[
          Icon(
            LineAwesomeIcons.alternate_sign_out,
            size:kSpacingUnit.w*2.5
            ),
          SizedBox(width:kSpacingUnit.w*2.5),
          Text("Déconnexion",
          style:kTitleTextStyle.copyWith(
            fontWeight:FontWeight.w500,
          ) ,
          ),
          Spacer(),
          IconButton(
                icon:Icon(LineAwesomeIcons.angle_right,size:kSpacingUnit.w*2.5,),     
                onPressed: (){
                    Navigator.push(
                      context,   
                      MaterialPageRoute(builder: (_) => EditeProfile()),
                    );},

              ),
         


        ],
      ),
    ),

                    ],
                  ),
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
                Container(
                  padding: EdgeInsets.only(top:kSpacingUnit.w*1),
                  decoration: BoxDecoration(
                    color:Colors.white30),
                  child: 
                    list,
                  ), )
                  
                  
              ],
            ),
          ),
      ),
    );
  }
}