import 'package:flutter/material.dart';
class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_onthecart= [
    {
      "name":"Blazer",
      "picture":"assets/products/blazer1.jpeg",
      "price":80,
      "size":"M",
      "color":"Red",
      "quantiy":1,
    },
    {
      "name":"Shoes",
      "picture":"assets/products/hills1.jpeg",
      "price":84,
      "size":"7",
      "color":"Black",
      "quantiy":1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_onthecart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_product_color:Products_onthecart[index]["color"] ,
          cart_product_name: Products_onthecart[index]["name"],
          cart_product_pic: Products_onthecart[index]["picture"],
          cart_product_price: Products_onthecart[index]["price"],
          cart_product_size: Products_onthecart[index]["size"],
          cart_product_qty: Products_onthecart[index]["quantity"],
          ); 
        }
    );
  }
}

class Single_cart_product extends StatelessWidget {
  
   final cart_product_name;
   final cart_product_pic;
   final cart_product_price;     
   final cart_product_size;
   final cart_product_color;
   final cart_product_qty;
   Single_cart_product({
     this.cart_product_color,
     this.cart_product_name,
     this.cart_product_pic,
     this.cart_product_price,
     this.cart_product_qty,
     this.cart_product_size
   });  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//============LEADING SECTION===================PHOTO OF THE PRODUCT
        leading: Image.asset(cart_product_pic,width: 70,height: 70,),
//=================TITLE SECTION=========================
        title:Text(cart_product_name),
//=================SUBTITLE SECTION========================
        subtitle: new Column(
            children: <Widget>[
              //ROW INSIDE COLUMN
              new Row(children: <Widget>[
//=============THIS SECTION IS FOR THE SIZE OF PRODUCT=======================
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("size: "),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: new Text(cart_product_size,style:TextStyle(color:Colors.redAccent)),
              ),
//=============THIS SECTION IS FOR THE PRODUCT COLOR================================
              new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
              child: new Text("Color"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text(cart_product_color,style:TextStyle(color:Colors.redAccent)),
              ),
              



              ],
              ),
//=====================THIS SECTION IS FOR PRODUCT PIRZE=============================
              new Container(
                alignment:Alignment.topLeft,
                child: Text("\$${cart_product_price}",style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize:17.0,
                  color:Colors.orange,

                ),),

              )
            ],
        ),
      trailing: new Column(
        children:<Widget>[
          new IconButton(icon:Icon(Icons.arrow_drop_up),onPressed:(){}),
          new Text("$cart_product_qty"),
          new IconButton(icon:Icon(Icons.arrow_drop_down),onPressed:(){})
        ],
      ),
      ),
    );
  }
}