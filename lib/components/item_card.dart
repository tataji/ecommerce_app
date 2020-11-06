import 'package:e_commerce/components/CustomDropDown.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
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
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16),
                  ),
//              child: Hero(
//                tag: "${product.id}",
//                child: Image.asset(product.image),
//              ),
                ),
                Align(alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite,color: whiteColor,),
                  ),
                ),
                Align(alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(width: 20,height: 20,
                            child: CustomDropdown(text: "text")),
                    //  Icon(Icons.add_box,color: Colors.white,)
                      ],),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
