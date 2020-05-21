import 'package:flutter/material.dart';
import 'package:red_de_post/Prueba.dart';
class PostDetail extends StatelessWidget {
  final Post post;
  PostDetail({this.post});


  @override
  Widget build(BuildContext context) {

    Widget Comentarios= ListView(
        children: post.comments.map((t)=> Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            leading: Icon(Icons.comment,color: Colors.lightGreenAccent,),
            title: Text(t.email,style: TextStyle(color: Colors.white),),
            subtitle: Text(t.body,style :TextStyle(color: Colors.white)),
          ),
        )).toList(),

      );



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff76FF03),
        title: Text(post.id.toString()),
      ),
      body:Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 50,top:30,right: 50),
            child: Container(

              height: MediaQuery.of(context).size.height-400,
              width: MediaQuery.of(context).size.width-100,

              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff76FF03) ,width: 4 ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(50))
              ),

              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text( "titulo :"+post.title,style: TextStyle(color: Colors.white),),
                  ),
                  Center(
                    child: Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: Text(post.body,style: TextStyle(color: Colors.white),),
                    )
                    ,
                  )

                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),

            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,

              child: Comentarios,
            ),
          ),

        ],
      )





      /*
      Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width:  MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(post.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: post.comments.map((t)=>FilterChip(
                      backgroundColor: Colors.amber,
                      label: Text(t.email, style: TextStyle(color: Colors.white),),
                      onSelected: (b){},
                    )).toList(),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),*/
    );
  }
}




/*Esto ya jala
Expanded(
            child: ListView(
            children: post.comments.map((t)=> Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListTile(
                leading: Icon(Icons.comment),
                title: Text(t.email),
                subtitle: Text(t.body),
              ),
            )).toList(),

        ),
          )
 */