import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/home/widgets/item_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[

          CategoryItem(
            title: "Todos",
            isActive: true,
            press: () {},
          ),

          CategoryItem(
            title: "Ao Vivo",
            press: () {},
          ),

          CategoryItem(
            title: "Series",
            press: () {},
          ),

          CategoryItem(
            title: "Filmes",
            press: () {},
          ),

        ],
      ),
    );
  }
}