import 'dart:async';

import 'package:e_commerce/local_storage/SharedPreference.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/LoginScreen.dart';
import 'package:e_commerce/utils/SizeConfig.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig.init(context);
    Timer(Duration(seconds: 3), ()async{
            int value = await SharedPreferencesWrapper.getLoginDetails();
            if(value==1) {
              // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
              //     builder: (BuildContext context) => BottomMenuHomeScreen()),
              //         (Route<dynamic> route) => false);
              // Navigator.of(context).pushNamed(BottomMenuHomeScreen.routeName);
              Navigator.of(context).pushNamedAndRemoveUntil(BottomMenuHomeScreen.routeName, (route) => false);
            }else{
              Navigator.pushNamedAndRemoveUntil(context,LoginScreen.routeName, (route) => false);
            }
    });
    return Stack(
     children: [
       Container(color: appbarGreenColor,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
       ),
     ],
    );
  }
}
