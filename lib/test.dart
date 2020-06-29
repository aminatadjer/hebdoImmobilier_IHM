import 'package:flutter/material.dart';
import 'ListItems/GridItemArray.dart';

class detailProduk extends StatefulWidget {
  GridItem gridItem;

  detailProduk(this.gridItem);

  @override
  _detailProdukState createState() => _detailProdukState(gridItem);
}

/// Detail Product for Recomended Grid in home screen
class _detailProdukState extends State<detailProduk> {
  double rating = 3.5;
  int starCount = 5;
  /// Declaration List item HomeGridItemRe....dart Class
  final GridItem gridItem;
  _detailProdukState(this.gridItem);

  @override
  static BuildContext ctx;
  int valueItemChart = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  /// BottomSheet for view more in specification
  void _bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(
              color: Colors.black26,
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Container(
                  height: 1500.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Center(
                          child: Text(
                            'description',
                            style: _subHeaderCustomStyle,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                        child: Text(
                            'description',      style: _detailText),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'description',
                          style: TextStyle(
                              fontFamily: "Gotik",
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Colors.black,
                              letterSpacing: 0.3,
                              wordSpacing: 0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Text(
                          'jjjjj',
                          style: _detailText,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  /// Custom Text black
  static var _customTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: "Gotik",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  /// Custom Text for Header title
  static var _subHeaderCustomStyle = TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w700,
      fontFamily: "Gotik",
      fontSize: 16.0);

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Gotik",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  Widget build(BuildContext context) {


    /// Variable Component UI use in bottom layout "Top Rated Products"
    var _suggestedItem = Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 20.0, top: 30.0, bottom: 20.0),
      child: Container(
        height: 280.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                 'jjj',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gotik",
                      fontSize: 15.0),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'description',
                    style: TextStyle(
                        color: Colors.indigoAccent.withOpacity(0.8),
                        fontFamily: "Gotik",
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildRating(String date, String details, Function changeRating,String image) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0))
        ),
      ),
      subtitle: Text(details,style: _detailText,),
    );
  }
}




Widget _line(){
  return  Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}
