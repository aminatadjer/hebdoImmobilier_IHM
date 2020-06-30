import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'AccountPage.dart';
import 'constants.dart';



class Journal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      body: Container(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          IconButton(
                icon:Icon(Icons.highlight_off),
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()),
                    );},
                color:Colors.blue,
              ),
          Image(image: AssetImage('assets/images/journal.png'),height: 600,
    width: 600,),
        ],)

        ,
      ),
    );
    }
    }