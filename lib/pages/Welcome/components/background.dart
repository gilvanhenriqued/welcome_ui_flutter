import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return Container(
      height: sizeScreen.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png',
            width: sizeScreen.width * 0.3,),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png',
            width: sizeScreen.width * 0.2,),
          ),
          child,
        ],
      ),
    );
  }
}