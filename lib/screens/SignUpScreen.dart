import 'package:e_commerce/components/RoundedButton.dart';
import 'package:e_commerce/components/RoundedInputField.dart';
import 'package:e_commerce/components/RoundedPasswordInputField.dart';
import 'package:e_commerce/screens/LoginScreen.dart';
import 'package:e_commerce/screens/OtpReadingScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName="/signUpScreen";
  SignUpScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("SignUp"),),
      body: SingleChildScrollView(
        child: Container(
            height:  MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height:10),
                RoundedInputField(
                  hintText: "Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Your Email/Mobile",
                  onChanged: (value) {},
                ),
                RoundedPasswordInputField(
                  hintText: "Password",
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "Register",
                  press: () {
                    Navigator.pushNamed(context, OtpReadingScreen.routeName);
                  },color:appbarGreenColor,
                ),
              ],
            )),
      ),
    );
  }
}
