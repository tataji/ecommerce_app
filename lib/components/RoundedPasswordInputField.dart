import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
class RoundedPasswordInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  RoundedPasswordInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(obscureText: true,
        onChanged: onChanged,
        cursorColor: whiteColor,
        decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: whiteColor,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: whiteColor,
        ),
          hintText: hintText,hintStyle: TextStyle(color: whiteColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}