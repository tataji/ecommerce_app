import 'file:///C:/Users/91850/Desktop/Deepak/Main%20File/Android%20Files/e_commerce/lib/utils/AppUtils.dart';
import 'package:e_commerce/components/item_card.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends StatefulWidget {
  Product product;
  ProductDetailsScreen({Key key,this.product}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductDetailsScreenState();
  }
}

class ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppUtils.buildAppBar(),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Text(""),
      ),
    );
  }
}
