import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/home/widgets/header_home.dart';
import 'package:space_cast/app/modules/home/widgets/list_category.dart';
import 'package:space_cast/app/modules/home/widgets/midia_list.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Titulo   
              HeaderSpace(),

            // Espacamento 
              SizedBox(height: 48),

            // Lista de Categoria
              CategoryList(),

            // Espacamento 
              SizedBox(height: 32),
              
            // Lista de Filmes 
              MidiaList(
                category: "Filmes",
              ),

            // Espacamento 
              SizedBox(height: 24),

            // Lista de Series 
              MidiaList(
                category: "Series",
              ),

            // Espacamento 
              SizedBox(height: 24),

              // Lista de Ao Vivo 
              MidiaList(
                category: "Series",
              ),

            // Espacamento 
              SizedBox(height: 24),

          ]
        ),
      );
  }
}