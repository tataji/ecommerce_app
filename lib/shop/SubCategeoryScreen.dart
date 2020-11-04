import 'file:///C:/Users/91850/Desktop/Deepak/Main%20File/Android%20Files/e_commerce/lib/utils/AppUtils.dart';
import 'package:e_commerce/components/ProductDetailsScreen.dart';
import 'package:e_commerce/components/item_card.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubCategeoryScreen extends StatefulWidget {

  SubCategeoryScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SubCategeoryScreenState();
  }
}

class SubCategeoryScreenState extends State<SubCategeoryScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppUtils.buildAppBar(),
      body: Container(
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(padding:  EdgeInsets.only(left: defaultPadding,top: defaultPadding,right: defaultPadding),
                      itemCount: products.length,physics: ScrollPhysics(),shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ItemCard(
                        product: products[index],
                       press: () => Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ProductDetailsScreen(
                               product: products[index],
                             ),
                           )),
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
