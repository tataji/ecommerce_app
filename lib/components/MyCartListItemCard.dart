import 'package:e_commerce/models/ItemsCategeory.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

class MyCartListItemCard extends StatelessWidget {
  final ItemsCategeory? product;
  //final Function press;
  const MyCartListItemCard({
    Key? key,
    this.product,
    //this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     // onTap: press,
      child: Container(width: MediaQuery.of(context).size.width,
        height: 200,
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: product!.color!),
                        //color: product.color,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:Container(width: 100,height: 100,decoration: BoxDecoration(shape: BoxShape.circle),)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product name',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                    Text('description',style: TextStyle(fontSize: 12),),
                    Text('Price:',style: TextStyle(fontSize: 12),),
                  ],),
            ),
          ],
        ),
      ),
    );
  }
}
