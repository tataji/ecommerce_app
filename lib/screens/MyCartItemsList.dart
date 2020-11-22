import 'package:e_commerce/components/CommonButton.dart';
import 'package:e_commerce/components/MyCartListItemCard.dart';
import 'package:e_commerce/models/ItemsCategeory.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class MyCartItemList extends StatefulWidget {
  MyCartItemList({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCartItemListState();
  }
}

class MyCartItemListState extends State<MyCartItemList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: SingleChildScrollView(
        child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery.of(context).size.height-250,
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 20, left: 20,bottom: 100),
                      itemCount: 2,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: MyCartListItemCard(
                            product: itemsCategeory[index],),
                        );
                      }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,color: whiteColor,
                  child:Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Total amount"),
                       CommonButton(color: appbarGreenColor,press: (){},
                          text: "Place Order",textColor: whiteColor,),
                    ],),
                  ),)
              ],
            )),
      ),
    );
  }
}
