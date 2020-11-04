import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/components/RoundListItem.dart';
import 'package:e_commerce/components/RoundedButton.dart';
import 'package:e_commerce/components/RoundedInputField.dart';
import 'package:e_commerce/components/RoundedPasswordInputField.dart';
import 'package:e_commerce/shop/SubCategeoryScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width ,
          child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height:10),
                RoundedInputField(
                  hintText: "Your Email/Mobile",
                  onChanged: (value) {},
                ),
                RoundedPasswordInputField(
                  hintText: "Password",
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {},color: Colors.green,
                ),
              ],
            ),
          )),
    );
  }
}
