import 'package:e_commerce/models/ItemsCategeory.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

class CategeoryCard extends StatelessWidget {
  final ItemsCategeory product;
  final Function press;
  const CategeoryCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: product.color),
                //color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:Container(width: 100,height: 100,decoration: BoxDecoration(shape: BoxShape.circle),)
            ),
          ),
          Container(width: 100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  // products is out demo list
                  product.title,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
//          Text(
//            "\$${product.price}",
//            style: TextStyle(fontWeight: FontWeight.bold),
//          )
        ],
      ),
    );
  }
}


//Hero(
//tag: "${product.id}",
//child: Image.asset(product.image),
//),