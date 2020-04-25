
import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      
      height: 100.0,
      child: ListView(
        scrollDirection:Axis.horizontal,
        children:<Widget>[
          Categories(
            image_location: 'assets/cats/tshirt.png',
            image_caption:  "t-shirts",
          ),
          Categories(
            image_location: 'assets/cats/accessories.png',
            image_caption:  "accessories",
          ),
          Categories(
            image_location: 'assets/cats/formal.png',
            image_caption:  "formals",
          ),
          Categories(
            image_location: 'assets/cats/informal.png',
            image_caption:  "informals",
          ),
          Categories(
            image_location: 'assets/cats/jeans.png',
            image_caption:  "jeans",
          ),
          Categories(
            image_location: 'assets/cats/shoe.png',
            image_caption:  "shoes",
          ),
         
        ],
              ),
    );

  }

}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Categories({
    this.image_location,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
      child: Container(
        width: 100.0,
              child: ListTile(
          title:Image.asset(image_location,height: 80.0,width: 100.0,),
          subtitle: Container(
            alignment:Alignment.topCenter,
            child: Text(image_caption,style: new TextStyle( fontSize:15.0,color: Colors.black,)),
          ),  
        ),
      ),
      ),
    );
  }
}
 