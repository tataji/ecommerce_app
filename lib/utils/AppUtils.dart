import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppUtils {
  static AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
          ),
          onPressed: () {},
        ),
        Container(
           child: Stack(
             children: [
               Align(alignment: Alignment.topRight,
                 child: Padding(
                   padding:  EdgeInsets.only(left:15.0),
                   child: Text("2",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                 ),
               ),
               IconButton(
                 icon: SvgPicture.asset(
                   "assets/icons/cart.svg",
                   // By default our  icon color is white
                 ),
                 onPressed: () {},
               )
             ],
           ),
        ),
        //SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

}