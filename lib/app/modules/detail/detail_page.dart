import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/detail/styles/detail_styles.dart';
import 'package:space_cast/app/shared/assets/styles/main_styles.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: pad_main,
                decoration: BoxDecoration(
                   color: light_color
                ),

                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          onPressed: (){}, 
                          child: Text('Voltar', style: menu_text,)
                        )
                      ]
                    ),

                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 197,
                              width: 140,
                              color: red_color,
                              margin: EdgeInsets.only(top: 16),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'data',
                                    style: h2_text,
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '115 min',
                                        style: info_text,
                                      ),

                                      SizedBox( width: 16 ),

                                      Text(
                                        '2020',
                                        style: info_text,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]
                        ),
                      ],
                    )
                  ],
                ),  
              ),

              SizedBox(height: 24),

              Container(
                width: size.width,
                color: dark_color,

                child: Container(
                  margin: EdgeInsets.only(
                    top: 24, 
                    left: 24,
                    right: 24
                  ),

                  child: Column(

                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('data', style: desc_title,),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only( top:16 ),
                        child: Text(
                          'Nulla in pariatur qui proident nostrud ipsum magna cupidatat nostrud eiusmod laboris quis excepteur reprehenderit.',
                          style: desc_text,
                        ),
                      ),

                      SizedBox( height:32 ),

                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: red_color,
                        ),

                        child: SizedBox.expand(
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text('Entrar com Google', style: btn_text,),
                              ],
                            ),

                            onPressed: (){}
                          ),
                        ),

                      ),

                      SizedBox( height:24 ),

                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}