import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/home/styles/home_styles.dart';
import 'package:space_cast/app/modules/home/widgets/list_midia.dart';

class MidiaList extends StatelessWidget {
  final String category;

  const MidiaList({
    Key key,
    this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row( 
          children: [
            Text( category , style: category_title,),
          ]
        ),

        SizedBox(height: 16),

        ListMidia(
          category: category,
        ),

      ],
    );
  }
}
