import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:space_cast/app/modules/detail/detail_page.dart';

class ListMidia extends StatelessWidget {
    final String category;

    const ListMidia({
      Key key, 
      this.category
    }): super(key: key);
    

  @override
  Widget build(BuildContext context) {

    var snapshots = Firestore.instance
    .collection('midia')
    .where('category_midia', isEqualTo: category)
    .snapshots();


    return Container(
      height: 200,
      child: StreamBuilder(
            stream: snapshots,

            builder: ( 
              
              BuildContext context, 
              AsyncSnapshot<QuerySnapshot> snapshot 

            ) {
              // Se Tiver Erro de Conexao 
              if (snapshot.hasError) {
                print(
                  'Error: ${snapshot.error}'
                );
              }

              // Se Estiver Carregando 
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }


              // Se Nao ter nada No Banco
              if (snapshot.data.documents.length == 0) {
                return Center(child: CircularProgressIndicator(),);
              }

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
                    ),

                    child: SizedBox.expand(
                      child: FlatButton(
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => DetailPage()));
                        }, 
                      ),
                    ),
                  );
                }
              );  
            } 
          ),
    );
  }
}