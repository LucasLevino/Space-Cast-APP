import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/home/styles/home_styles.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({
    Key key, 
    this.title, 
    this.isActive = false, 
    this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: press,

      child: Padding(
        
        padding: const EdgeInsets.symmetric(
          horizontal: 24, 
          vertical: 16
        ),
        
        child: Column(
          children: <Widget>[

            Text(
              title,
              style: isActive 
              ? selected_category_text : 
                category_text
            ),

            if (isActive) 
            Container(
              margin: EdgeInsets.symmetric( vertical: 8 ),
              height: 2,
              width: 32,

              decoration: BoxDecoration(
                color: dark_color,
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        )
      ),
    );
  }
}