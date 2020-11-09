import 'package:e_commerce/components/CustomDialog.dart';
import 'package:e_commerce/components/RoundedButton.dart';
import 'package:e_commerce/components/RoundedInputField.dart';
import 'package:e_commerce/components/RoundedPasswordInputField.dart';
import 'package:e_commerce/screens/SignUpScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height:MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width ,
            child: Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
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
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              MyStatefulWidget(),));
                    },color: appbarGreenColor,
                  ),
                  SizedBox(height:10),
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialog();
                            }
                        );
                      },
                          child: Text("Forgot Password")),
                      GestureDetector(onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                            SignUpScreen(),));
                      },
                          child: Text("Register here")),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
