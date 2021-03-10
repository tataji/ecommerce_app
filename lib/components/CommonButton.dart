import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final Function? press;
  final Color? color, textColor;
  final double? width;
  const CommonButton({
    Key? key,
    this.text,
    this.press,
    this.color,
    this.width,
    this.textColor = whiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width!=null?width:size.width * 0.5,
      height: size.height/14,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child:  RaisedButton(color: color,onPressed: press as void Function()?,
          child: Text(text!,style: TextStyle(color: textColor),),),
      ),
    );
  }
}