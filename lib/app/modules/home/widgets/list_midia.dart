import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListMidia extends StatelessWidget {
  const ListMidia({
    Key key,
    @required this.snapshots,
  }) : super(key: key);

  final Stream<QuerySnapshot> snapshots;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: StreamBuilder(
            stream: snapshots,

            builder: ( 
              
              BuildContext context, 
              AsyncSnapshot<QuerySnapshot> snapshot 

            ) {
              if (snapshot.hasError) {
                print(
                  'Error: ${snapshot.error}'
                );
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              //if (snapshot.data.documents.length == 0) {
              //  return Center(child: CircularProgressIndicator(),);
              //}

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.documents.length,
                itemBuilder: ( BuildContext context, int i ) {

                  var item = snapshot.data.documents[i].data;

                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 140,
                    height: 197,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new NetworkImage( item['img_midia'] ),
                          fit: BoxFit.fill,
                      )
                    )
                  );
                }
              );  

            } 
          ),
    );
  }
}