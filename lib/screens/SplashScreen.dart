import 'dart:async';

import 'package:e_commerce/local_storage/SharedPreference.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/LoginScreen.dart';
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
    Timer(Duration(seconds: 3), ()async{
            int value = await SharedPreferencesWrapper.getLoginDetails();
            if(value==1) {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (BuildContext context) => BottomMenuHomeScreen()),
                      (Route<dynamic> route) => false);
            }else{
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (BuildContext context) => LoginScreen()),
                      (Route<dynamic> route) => false);
            }
    });
    return Stack(
     children: [
       Container(color: Colors.greenAccent,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
       ),
     ],
    );
  }
}
