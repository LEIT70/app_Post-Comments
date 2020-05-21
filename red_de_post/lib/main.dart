
import 'package:flutter/material.dart';
import 'package:red_de_post/post_list.dart';
void main(){
  runApp(MaterialApp(
    title: "Post App",
    home: PostList(),
    debugShowCheckedModeBanner: false,
  ));
}