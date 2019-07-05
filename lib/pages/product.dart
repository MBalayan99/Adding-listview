import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title,this.imageUrl);
  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop:(){
         Navigator.pop(context, true);
          print('Popped up');
          return Future.value(false);
        }

        ,child: Scaffold(
    appBar: AppBar(
     title: Text(title),
    ),
    body: Column(children:<Widget>[ 
      Image.asset(imageUrl),
      Text(
   title
), RaisedButton (
        child: Text('Delete'),
    onPressed: (){
    Navigator.pop(context, true);
    },
    )]),
    ));
  }
}

