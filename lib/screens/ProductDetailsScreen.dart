import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/components/CommonButton.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/utils/AppUtils.dart';
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
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(key: scaffoldKey,
      appBar: AppUtils.buildAppBar(context),
      body: GestureDetector(
        // onTap: press,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: MediaQuery.of(context).size.width ,
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 250.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black12),
                              child: Center(child: Text('Image $i', style: TextStyle(fontSize: 16.0),))
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(defaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product name',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                    Text('description',style: TextStyle(fontSize: 12),),
                    Text('Price:',style: TextStyle(fontSize: 12),),
                  ],),
              ),
              Expanded(
                child: Align(alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: whiteColor,
                    child:Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: 150,height: 50,
                          decoration: BoxDecoration(border: Border.all(color:appbarGreenColor),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(child: Text("+Wish list"))),
                           CommonButton(color: appbarGreenColor,press: (){
                             var sheetController = scaffoldKey.currentState
                                 .showBottomSheet((context) => Container(width: MediaQuery.of(context).size.width,
                               height: MediaQuery.of(context).size.height/4,color:  greyColor,
                               child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Padding(padding:  EdgeInsets.all(8.0),
                                     child: Text("Select Size")),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: [
                                       SizedBox(width: 10,),
                                       Container(
                                         padding: EdgeInsets.all(10),width: 40,height: 40,
                                         decoration: BoxDecoration(color: Colors.grey,
                                           shape: BoxShape.circle,
                                           // borderRadius: BorderRadius.circular(16),
                                         ),
                                       ),
                                       SizedBox(width: 10,),
                                       Container(
                                         padding: EdgeInsets.all(10),width: 40,height: 40,
                                         decoration: BoxDecoration(color: Colors.grey,
                                           shape: BoxShape.circle,
                                           // borderRadius: BorderRadius.circular(16),
                                         ),
                                       ),
                                       SizedBox(width: 10,),
                                       Container(
                                         padding: EdgeInsets.all(10),width: 40,height: 40,
                                         decoration: BoxDecoration(color: Colors.grey,
                                           shape: BoxShape.circle,
                                           // borderRadius: BorderRadius.circular(16),
                                         ),
                                       ),
                                       SizedBox(width: 10,),
                                       Container(
                                         padding: EdgeInsets.all(10),width: 40,height: 40,
                                         decoration: BoxDecoration(color: Colors.grey,
                                           shape: BoxShape.circle,
                                           // borderRadius: BorderRadius.circular(16),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),

                               ],),
                             ));
                             sheetController.closed.then((value) {
                               print("closed");
                             });
                           },
                             text: "Add Bag",textColor: whiteColor,),
                        ],),
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
