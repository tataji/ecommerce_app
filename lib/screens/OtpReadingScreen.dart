import 'dart:async';

import 'package:e_commerce/components/RoundedButton.dart';
import 'package:e_commerce/local_storage/SharedPreference.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/HomeScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpReadingScreen extends StatefulWidget {
  static const routeName="/OtpReadingScreen";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OtpReadingScreenState();
  }
}

class OtpReadingScreenState extends State<OtpReadingScreen> {
  String _code;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification"),),
      body: SingleChildScrollView(
        child: Container(
            height:  MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SizedBox(height:10),
                PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black),
                    colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                  ),
                  currentCode: _code,
                  onCodeSubmitted: (code) {},
                  onCodeChanged: (code) {
                    if (code.length == 6) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      Timer(Duration(seconds: 2), ()async{
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) =>
                                BottomMenuHomeScreen()),(Route<dynamic> route) => false);
                      });

                    }
                  },
                ),
                RaisedButton(
                  child: Text('Set code to 123456'),
                  onPressed: () async {
                    setState(() {
                      _code = '123456';
                    });
                  },
                ),
                RoundedButton(
                  text: "Confirm",
                  press: () {
                    SharedPreferencesWrapper.saveLoginDetails();
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) =>
                            BottomMenuHomeScreen()),(Route<dynamic> route) => false);
                  },color:appbarGreenColor,
                ),
              ],
            )),

      ),
    );
  }
}
