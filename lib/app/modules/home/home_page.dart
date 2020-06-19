import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:space_cast/app/modules/home/widgets/home_body.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
             color: light_color
          ),

          padding: EdgeInsets.only(
            top: 32,
            left: 24,
            right: 24,
          ),

          child: Body(),
        ),
      ),
    );
  }
}


