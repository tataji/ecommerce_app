import 'package:e_commerce/utils/AppUtils.dart';
import 'package:e_commerce/utils/SizeConfig.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(appBar: AppBar(
        backgroundColor: appbarGreenColor,),
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width ,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:20.0,top: 10),
                    child: Text(
                      "Search",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
