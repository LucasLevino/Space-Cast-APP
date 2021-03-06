import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:space_cast/app/modules/home/styles/home_styles.dart';
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

    //Firestore.instance.collection('midia').where('category_midia', isEqualTo: 'Series').getDocuments().then((value) => {
    //  value.documents.forEach((element) {
    //    print(element.data);
    //  })
    //});

    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
             color: light_color
          ),

          padding: pad_main,

          child: Body(),
        ),
      ),
    );
  }
}


