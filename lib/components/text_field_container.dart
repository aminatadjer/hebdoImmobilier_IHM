import 'package:flutter/material.dart';


class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      height: size.height*0.08,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
