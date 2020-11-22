import 'package:e_commerce/screens/MyCartItemsList.dart';
import 'package:e_commerce/screens/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';

class AppUtils {
   static AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SearchScreen()));
          },
        ),
        Container(
           child: Stack(
             children: [
               Align(alignment: Alignment.topRight,
                 child: Padding(
                   padding:  EdgeInsets.only(left:15.0),
                   child: Text("2",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),),
                 ),
               ),
               IconButton(
                 icon: SvgPicture.asset(
                   "assets/icons/cart.svg",
                   // By default our  icon color is white
                 ),
                 onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context) => MyCartItemList()));
                 },
               )
             ],
           ),
        ),
        //SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

}