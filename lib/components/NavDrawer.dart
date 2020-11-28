import 'package:e_commerce/screens/LoginScreen.dart';
import 'package:e_commerce/screens/ProfileScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                'Dinesh',
                style: TextStyle(color: whiteColor, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: 80,height: 80,child: Icon(Icons.account_circle),
                decoration: BoxDecoration(shape:BoxShape.circle,color: whiteColor, ),
                ),
              )
            ],),
            decoration: BoxDecoration(
                color: appbarGreenColor,
                  // image: DecorationImage(
                  // fit: BoxFit.fill,
                  // image: AssetImage('assets/images/cover.jpg'))
            ),),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          GestureDetector(onTap: (){
            print("on tap dected");
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
            child: ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Profile'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => {
              //Navigator.of(context).pop()
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (BuildContext context) => LoginScreen()),
                      (Route<dynamic> route) => false)
            },
          ),
        ],
      ),
    );
  }
}