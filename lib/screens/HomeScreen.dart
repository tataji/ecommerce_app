import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/components/RoundListItem.dart';
import 'package:e_commerce/components/categeory_cart.dart';
import 'package:e_commerce/models/ItemsCategeory.dart';
import 'package:e_commerce/shop/SubCategeoryScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
//  @override
//  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width ,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:20.0,top: 10),
                child: Text(
                  "Category",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(width: MediaQuery.of(context).size.width ,
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 150.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black12),
                              child: Center(child: Text('Image $i', style: TextStyle(fontSize: 16.0),))
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(padding: EdgeInsets.only(top: 20, left: 20),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: RoundListItem(
                        ),
                      );
                    }),
              ),
              Padding(
                padding:  EdgeInsets.only(left:20.0,top: 10),
                child: Text(
                  "Trending Items",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(padding: EdgeInsets.only(top: 20, left: 20),
                    itemCount: itemsCategeory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CategeoryCard(
                          product: itemsCategeory[index],
                          press: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                              SubCategeoryScreen(),),),
                        ),
                      );
                    }),
              ),
              Padding(
                padding:  EdgeInsets.only(left:20.0,top: 10),
                child: Text(
                  "New Items",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(padding: EdgeInsets.only(top: 20, left: 20),
                    itemCount: itemsCategeory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CategeoryCard(
                          product: itemsCategeory[index],
                          press: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                              SubCategeoryScreen(),),),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
