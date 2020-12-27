import 'package:e_commerce/components/CustomDropDown.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/provider_model/MyCartViewModel.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: whiteColor,
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topRight,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.end,
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         Consumer<MyCartViewModel>(
                //           builder: (context, myCartViewModel, child) =>
                //               Container(
                //                   width: 20,
                //                   height: 100,
                //                   child: Column(
                //                   children: [
                //                     CustomDropdown(text: "text",
                //                       count: myCartViewModel.carList.length,
                //                       minusIconPress: (){
                //                         myCartViewModel.addToCart(1);
                //                       },plusIconPress: (){
                //                         myCartViewModel.addToCart(1);
                //                       },
                //                       myCartViewModel: myCartViewModel,),
                //                     Text('${myCartViewModel.carList.length}'),
                //                   ],)),
                //
                //         )
                //       ],
                //     ),
                //   ),
                // ),
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
