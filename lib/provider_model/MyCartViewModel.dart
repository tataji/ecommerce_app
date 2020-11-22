import 'package:flutter/material.dart';

class MyCartViewModel extends ChangeNotifier{
  List carList = [];

  addToCart(int index){
    carList.add(index);
    notifyListeners();
  }
}