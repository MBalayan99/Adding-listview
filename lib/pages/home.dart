import 'package:flutter/material.dart';
import 'package:first_app/product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(title: Text("Choose",),
          automaticallyImplyLeading: false,
        ),
        ListTile(
          title: Text("Manage Products"),
          onTap: (){},
        )

      ],),),
    );
  }
}
