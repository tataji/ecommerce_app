import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class CreateOrEditAddressScreen extends StatefulWidget {
  CreateOrEditAddressScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateOrEditAddressScreenState();
  }
}

class CreateOrEditAddressScreenState extends State<CreateOrEditAddressScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create addresses "),
          backgroundColor: appbarGreenColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
