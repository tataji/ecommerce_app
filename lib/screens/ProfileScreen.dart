import 'dart:io';

import 'package:e_commerce/screens/SavedAddressScreen.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profileScreen";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final picker = ImagePicker();
  final List<String> photoChooser = <String>[
    'Take a photo',
    'Choose from Gallery',
    'Remove image'
  ];

  Future getImagefromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile == null) {
      return;
    }
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future getImagefromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return;
    }
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future removeImage() async {
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
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
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: whiteColor,
                                child: _image == null
                                    ? Icon(Icons.account_circle,color:Colors.grey)
                                    : CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            Image.file(_image!).image,
                                      ),
                              ),
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 150,
                                    child: ListView.separated(
                                      padding: const EdgeInsets.all(8),
                                      itemCount: photoChooser.length,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              InkWell(
                                        onTap: () {
                                          if (index == 0) {
                                            getImagefromCamera();
                                          } else if (index == 1) {
                                            getImagefromGallery();
                                          } else{
                                            removeImage();
                                          }
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 33,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '${photoChooser[index]}',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                      ),
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    ),
                                  );
                                });
                          },
                        ),
                        Text(
                          'Dinesh',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Saved Address'),
                  onTap: () => {
                    Navigator.pushNamed(context, SavedAddressScreen.routeName),
                  },
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
