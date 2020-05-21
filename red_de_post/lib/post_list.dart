import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:red_de_post/post_detail.dart';
import 'package:red_de_post/red.dart';
import 'package:http/http.dart' as http;

import 'Prueba.dart';


class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
//  String url ="https://raw.githubusercontent.com/LEIT70/app_post/master/post.json";
 // Red red;
  String url ="https://raw.githubusercontent.com/LEIT70/app_post/master/post2.json";
  Prueba prueba;

  @override
  void initState() {
    super.initState();
    fetchData();
  }
  void fetchData() async{
    var response = await http.get(url);
    var decodedJson = jsonDecode(response.body);
    prueba = Prueba.fromJson(decodedJson);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyHome"),
        backgroundColor: Color(0xff76FF03),
      ),
      drawer: Drawer(),
      body: prueba==null ? Center(child: CircularProgressIndicator(),) :
      ListView(


       // crossAxisCount: 1,
        children: prueba.post.map((p)=> Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            elevation: 3,
                color: Colors.black,
                child:  ListTile(

              leading: Icon(Icons.comment,color: Colors.lightGreenAccent),
              title: Text(p.title,style:TextStyle(color: Colors.white) ),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail(post: p,)));
              },

            ),
          )
        )).toList(),
      ),
    );
  }
}

