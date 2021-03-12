import 'package:e_commerce/local_storage/SharedPreference.dart';
import 'package:e_commerce/screens/LoginScreen.dart';
import 'package:e_commerce/screens/ProfileScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                'User Name',
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
            Navigator.pushNamed(context, ProfileScreen.routeName);
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
              SharedPreferencesWrapper.clearLoginDetails(),
              Navigator.pushNamedAndRemoveUntil(context,LoginScreen.routeName, (route) => false)
            },
          ),
        ],
      ),
    );
  }
}