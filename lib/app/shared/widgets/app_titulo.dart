import 'package:flutter/material.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';

class Titulo_App extends StatelessWidget {
  const Titulo_App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(  
      children: <Widget>[
        Text('Space Cast',style: h1_text),
      ],
    );
  }
}