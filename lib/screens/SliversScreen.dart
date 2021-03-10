import 'package:e_commerce/components/RoundedButton.dart';
import 'package:e_commerce/components/RoundedInputField.dart';
import 'package:e_commerce/components/RoundedPasswordInputField.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliversScreen extends StatefulWidget {
  SliversScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliversScreenState();
  }
}

class SliversScreenState extends State<SliversScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text('SliverAppBar'),
          backgroundColor: Colors.green,
          expandedHeight: 80.0,
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
              Container(color: Colors.pink),
            ],
          ),
        ),
      ],
      ),
    );
  }
}
