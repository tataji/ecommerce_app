import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

class RoundListItem extends StatelessWidget {

  const RoundListItem({
    Key key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),width: 100,height: 100,
                decoration: BoxDecoration(color: Colors.grey,
                 shape: BoxShape.circle,
                 // borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
          Container(width: 100,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  // products is out demo list
                  "Text",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          // Text(
          //   "\$${product.price}",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // )
        ],
      ),
    );
  }
}
