import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'constants.dart';
import 'AccountPage.dart';



class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      appBar: AppBar(
      elevation: 8.0, // top bar
        leading: InkWell(
         onTap: () {},
         child: 
         IconButton(
                icon:Icon(Icons.keyboard_arrow_left,),
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()),
                    );},
                color:Colors.blue,
              ),
        
       ),
       backgroundColor: Colors.white,
       title: Text(
         "A propos de nous",
         style: TextStyle(color: Colors.blue),
       ),),
      body: Container(
        padding: EdgeInsets.only(top:kSpacingUnit.w*4),
        child: 
          ListView(
            children:<Widget>[
              Container(
                  height: kSpacingUnit.w*8,
                  margin:
                  EdgeInsets.symmetric(
                  horizontal: kSpacingUnit.w*4,
                  ).copyWith(
                  bottom:kSpacingUnit.w*2,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w*2,),
                  child: Row(
                    children:<Widget>[
                      Expanded(
                        child: Text(
                          "Bureau d'Alger",
                          overflow: TextOverflow.clip,
                          style:kTitleTextStyle.copyWith(
                           fontWeight:FontWeight.w500,
                           fontSize: 28,
                           color: Colors.grey
                          ) ,
                        ),
                      ),
                      
                    ],
                  ),
                ),
               Container(
                  height: kSpacingUnit.w*8,
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
                    color: Colors.white60,
                    offset: Offset(3.0,3.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                   ),], 
                    borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
                    color:Colors.white10,),
                  
                  child: Row(
                    children:<Widget>[
                      Icon(
                        LineAwesomeIcons.location_arrow,
                        size:kSpacingUnit.w*2.5
                        ),
                      SizedBox(width:kSpacingUnit.w*1),
                      Expanded(
                        child: Text(
                          "Rue Lahcene mimouni, sidi mhamed, Alger",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 18,
                          )
                        ),
                      ),
                      
                    ],
                  ),
                ),

                Container(
                  height: kSpacingUnit.w*8,
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
                    color: Colors.white60,
                    offset: Offset(3.0,3.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                   ),], 
                    borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
                    color:Colors.white10,),
                  
                  child:
                  
                  Column(
                        children: <Widget>[
                            Row(
                              children:<Widget>[
                                Icon(
                                LineAwesomeIcons.phone,
                                size:kSpacingUnit.w*2.5
                                ),
                              SizedBox(width:kSpacingUnit.w*1),
                              Expanded(
                                child: Text(
                                  "0 556 33 85 77",
                                  overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontSize: 18,
                                    )
                                ),
                              ),
                              ],
                            ),
                            Row(
                              children:<Widget>[
                                Icon(
                                LineAwesomeIcons.what_s_app,
                                size:kSpacingUnit.w*2.5
                                ),
                              SizedBox(width:kSpacingUnit.w*1),
                              Expanded(
                                child: Text(
                                  "0 777 86 45 34",
                                  overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontSize: 18,
                                    )
                                ),
                              ),
                              ],
                            ),
                        ],
                  ), 
                ),

                
                Container(
                  height: kSpacingUnit.w*8,
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
                    color: Colors.white60,
                    offset: Offset(3.0,3.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                   ),], 
                    borderRadius: BorderRadius.circular(kSpacingUnit.w*1),
                    color:Colors.white10,),
                  
                  child: Row(
                    children:<Widget>[
                      Icon(
                        LineAwesomeIcons.mail_bulk,
                        size:kSpacingUnit.w*2.5
                        ),
                      SizedBox(width:kSpacingUnit.w*1),
                      Expanded(
                        child: Text(
                          "gn_fekir@esi.dz",
                          overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 18,
                            )
                        ),
                      ),
                    ],
                  ),
                ),
    

             ],
            ),
      ),
    );
    }
    }