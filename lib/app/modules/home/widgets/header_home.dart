import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:space_cast/app/shared/widgets/app_titulo.dart';
import 'package:space_cast/app/modules/home/home_controller.dart';

class HeaderSpace extends StatefulWidget {
  @override
  _HeaderSpaceState createState() => _HeaderSpaceState();

}

class _HeaderSpaceState extends ModularState<HeaderSpace, HomeController> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 64,
      child: PageView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Titulo_App(),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: controller.logoff, 
                  child: Text('Log Out')
                )
              ],
          ),
        ],
      ),
    );
  }
}