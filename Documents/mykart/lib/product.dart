import 'package:flutter/material.dart';
import 'package:mykart/product_details.dart';
class Products extends StatefulWidget {
  @override
  
  _ProductsState createState() => _ProductsState();
}


class _ProductsState extends State<Products> {
  @override
  var product_list = [
    {
      "name":"Blazer",
      "picture":"assets/products/blazer1.jpeg",
      "old_price":120,
      "price":80,
    },
    {
      "name":"Blazer 2",
      "picture":"assets/products/blazer2.jpeg",
      "old_price":121,
      "price":81,
    },
    {
      "name":"Dress",
      "picture":"assets/products/dress1.jpeg",
      "old_price":122,
      "price":82,
    },
    {
      "name":"Dress 2",
      "picture":"assets/products/dress2.jpeg",
      "old_price":123,
      "price":83,
    },
     {
      "name":"Heels",
      "picture":"assets/products/hills1.jpeg",
      "old_price":124,
      "price":84,
    },
     {
      "name":"Shoes",
      "picture":"assets/products/shoe1.jpg",
      "old_price":125,
      "price":85,
    }
  ];
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),//
      itemBuilder: (BuildContext context,int index){
        return single_product(
          product_name:product_list[index]['name'],
          product_pic: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      });
  }
}
class single_product extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_old_price;
  final product_price;
  single_product({
  this.product_name,
  this.product_pic,
  this.product_old_price,
  this.product_price,
  
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Hero(
          tag: new Text("Hero 1 "), 
            child: Material(
              child:InkWell(
                onTap:()=>Navigator.of(context).push(new MaterialPageRoute(
                  //here we are passing the values of product to product details page
                  builder: (context)=> new ProductDetails(
                  product_detail_name: product_name,
                  product_detail_newprice: product_price,
                  product_detail_oldprice: product_old_price,
                  product_detail_picture: product_pic,
                ))),
                child:GridTile( 
                  footer: Container(
                    color:Colors.white,
                    child:new Row(children: <Widget>[
                      Expanded(
                        child: Text(product_name,style: TextStyle(fontWeight:FontWeight.bold,fontSize:16.0),),

                      ),
                      new Text("\$${product_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)

                    ],)
                  ),
                  child: Image.asset(
                    product_pic,
                    fit:BoxFit.cover,
                    )),
        ),
        
        )),
    );
    
  }
}
