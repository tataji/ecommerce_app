import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RoundedButton.dart';
import 'RoundedInputField.dart';

class CustomDialog extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const CustomDialog({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.black,offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top:10,bottom: 10),
                child: Text("Forgot Password"),
              ),
              RoundedInputField(
                hintText: "Your Email/Mobile",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Submit",
                press: () {},color: Colors.green,
              ),
            ],
          ),
        ),

      ],
    );
  }
}