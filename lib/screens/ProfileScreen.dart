import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("Profile"),
          backgroundColor: appbarGreenColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            child: Icon(Icons.account_circle),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: whiteColor,
                            ),
                          ),
                        ),
                        Text(
                          'Dinesh',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(width: MediaQuery.of(context).size.width,color: Colors.black,thickness: 1,),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Saved Address'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.star_border),
                  title: Text('Orders'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Wish List'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('LogOut'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
