import 'package:flutter/material.dart';

class Logo_Img extends StatelessWidget {
  const Logo_Img({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25,
      ),
      child: Image.asset("lib/app/modules/login/assets/logo.png", height: 300.0, alignment: Alignment.topCenter,),
    );
  }
}