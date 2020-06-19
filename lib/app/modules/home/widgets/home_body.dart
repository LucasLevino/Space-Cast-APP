import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/home/styles/home_styles.dart';
import 'package:space_cast/app/modules/home/widgets/list_category.dart';
import 'package:space_cast/app/modules/home/widgets/list_midia.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';
import 'package:space_cast/app/shared/widgets/app_titulo.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var snapshots = Firestore.instance
    .collection('midia')
    .where('category_midia', isEqualTo: 'Filme')
    .snapshots();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Titulo   
              Titulo_App(),

            // Espacamento 
              SizedBox(height: 48),

            // Lista de Categoria
              CategoryList(),

              SizedBox(height: 32),
              
              Row( children: [
                  Text('Filmes', style: category_title, )
                ]
              ),

              SizedBox(height: 16),

              ListMidia(snapshots: snapshots),

          ]
        ),
      );
  }
}

