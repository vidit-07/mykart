import 'package:flutter/material.dart'; 
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mykart/horizontal_listview.dart';
import 'package:mykart/product.dart';
import 'package:mykart/shopping_cart.dart';
void main() {
  runApp(
    MaterialApp(
      home:Homepage(),
    )
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height:200.0,
      child: new Carousel(
        boxFit : BoxFit.cover,
        images:[
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/m2.jpg'),
          AssetImage('assets/w1.jpeg'),
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/w4.jpeg'),
        ],
        autoplay: true,
       animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Mykart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => new Shopping())); 
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
            children : <Widget>[
            //header of drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Vidit Srivastava'),
              accountEmail: Text('vidit.103@gmail.com'),
                currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                backgroundColor: Colors.grey[700],
                child:Icon(Icons.person,color:Colors.white),
              ),
            ),
            decoration: new BoxDecoration(
              color:Colors.redAccent,


            ),
            ),
         //body of drawer
            InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('Home Page'),
                leading: Icon(Icons.home,color:Colors.redAccent),
                
              ),
            ),

            InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('My Account'),
                leading: Icon(Icons.person,color:Colors.redAccent),
                
              ),
            ),

            InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color:Colors.redAccent),
                
              ),
            ),

            InkWell(
                onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => new Shopping()));
                },
                child: ListTile(
                title:Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart,color:Colors.redAccent),
                
              ),
            ),

             InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('Favourites'),
                leading: Icon(Icons.favorite,color:Colors.redAccent),
                
              ),
            ),

             Divider(height: 20.0,thickness: .0,),
            InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue[300],),
                
              ),
            ),
             InkWell(
                onTap:(){Navigator.pop(context);},
                child: ListTile(
                title:Text('About'),
               leading: Icon(Icons.help,color:Colors.green,),
                
              ),
            ),
          ],
       ),
      ),
      body:new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0), 
          child: new Text('categories', 
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.grey[600],
            fontSize: 18,
          
          ),
          ),),
          //horizontal list view begins
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(15.0), 
          child: new Text('recent products', 
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.grey[600],
            fontSize: 18,
          
          ),
          ),),
          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      )
    );
  }
}