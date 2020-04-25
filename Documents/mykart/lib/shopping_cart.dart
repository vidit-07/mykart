import 'package:flutter/material.dart';
import 'package:mykart/cart_products.dart';
class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Shopping cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          ],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color:Colors.white,
        child: new Row(children: <Widget>[
          Expanded(child: ListTile(
            title: new Text("Total: "),
            subtitle: new Text("\$230"),
          ),),
          Expanded(child: new MaterialButton(onPressed:(){},
          child:new Text("Check out",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 16.0,)),
          color:Colors.redAccent,

          ),
          )
        ],)
      ),
    );
  }
}

