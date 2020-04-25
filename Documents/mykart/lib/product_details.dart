import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_newprice,
    this.product_detail_oldprice,
    this.product_detail_picture,
  });
  @override

  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Mykart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
       ],
      ),
    body:new ListView(
      children:<Widget>[
        new Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color:Colors.white70,
              child:Image.asset(widget.product_detail_picture),
            ),
            footer: new Container(
              color: Colors.white70,
              child:ListTile(
                leading:new Text(widget.product_detail_name ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,

                ),),       
                title:new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("\$${widget.product_detail_oldprice}",
                      style: TextStyle(color:Colors.grey,decoration:TextDecoration.lineThrough),)
                  ),
                  Expanded(
                    child: new Text("\$${widget.product_detail_newprice}",
                    style: TextStyle(fontWeight:FontWeight.bold,color:Colors.redAccent),)
                    
                    ),
                  
                  
                ],
                ),
              ),
            ),  
            ),
          ),
       
       // ===================THE FIRST BUTTONS=====================
          Row(
            children: <Widget>[
        
       // ================== THE SIZE BUTTON==============================
              Expanded(
                child:MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content:new Text("Choose the size"),
                        actions:<Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                          child: new Text("close"),)
                        ],
                      ); 
                    });
                  },
                color:Colors.white70,
                textColor:Colors.grey[600],
                 child: new Row(children: <Widget>[
                    Expanded(
                     child:new Text("Size") ),
                    Expanded(
                      child:new Icon(Icons.arrow_drop_down)),

                    ],
                ),
              ),
            ),
              
              
       // ================== THE COLOR BUTTON==============================
              Expanded(
                child:MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder:(context){
                      return new AlertDialog(
                        title: new Text("Color"),
                        content:new Text("Choose the color"),
                        actions:<Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);

                          },
                          child: new Text("close"),)
                        ],
                      ); 
                    });
                  },
                   color:Colors.white70,
                   textColor:Colors.grey[600],
                 child: new Row(children: <Widget>[
                    Expanded(
                     child:new Text("Colour") ),
                    Expanded(
                      child:new Icon(Icons.arrow_drop_down)),

                    ],
                ),
              ),
            ),

              
       // ================== THE QTY BUTTON==============================
              Expanded(
                child:MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder:(context){ 
                    return new AlertDialog(
                      title:Text("Quantity"),
                      content:Text("Choose the quantity"),
                      actions:<Widget>[
                        new MaterialButton(onPressed:(){
                          Navigator.of(context).pop(context);
                        },
                        child:new Text("close"),
                        )
                      ],
                    );
                  });
                },
                  color:Colors.white70,
                textColor:Colors.grey[600],
                 child: new Row(children: <Widget>[
                    Expanded(
                     child:new Text("QTY") ),
                    Expanded(
                      child:new Icon(Icons.arrow_drop_down)),

                    ],
                ),
              ),
            ),
          ],
        ),
               // ===================THE SECOND BUTTONS=====================
          Row(
            children: <Widget>[
        
       // ================== THE SIZE BUTTON==============================
              Expanded(
                child:MaterialButton(
                  onPressed: (){},
                color:Colors.redAccent,
                textColor:Colors.white,
                child:new Text("BUY NOW") 
                    
                ),
              ),


            new IconButton(icon: Icon(Icons.add_shopping_cart,color:Colors.redAccent), onPressed: (){}),              
            new IconButton(icon: Icon(Icons.favorite_border,color:Colors.redAccent), onPressed: (){}),  
            ],
        ),
        Divider(),
        new ListTile(
          title: new Text("Product Details"),
          subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
        ),
        Divider(),
        new Row(
          children:<Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
            child: new Text("Product Name",style:TextStyle(color:Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text(widget.product_detail_name),)
 //REMEMBER TO CREATE PRODUCT BRAND       
        ],
        ),
          new Row(children:<Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12, 4, 5, 5),
            child: new Text("Product Brand",style:TextStyle(color:Colors.grey),
            ),
            ),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text("Reebok"),)
//ADD THE PRODUCT CONDITION        
        ],),
          new Row(children:<Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12, 4, 5, 5),
            child: new Text("Product Condition",style:TextStyle(color:Colors.grey),
            ),
            ),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text("New"),)

        ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
        ),
       //SIMILAR PRODUCTS SECTION
       
       Container(
         height:360.0,
         child:Similar_products(),
       )
       
       
      ],
    ),
    
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
    
  ];
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),//
      itemBuilder: (BuildContext context,int index){
        return similar_single_product(
          product_name:product_list[index]['name'],
          product_pic: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      });
  }
  }
class similar_single_product extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_old_price;
  final product_price;
  similar_single_product({
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
