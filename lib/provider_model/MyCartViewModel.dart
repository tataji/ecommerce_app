import 'package:flutter/material.dart';

class MyCartViewModel extends ChangeNotifier{
  List cartList = [];

  addToCart(int index){
    cartList.add(index);
    notifyListeners();
  }
 int get itemCount {
    return cartList.length;
  }
}