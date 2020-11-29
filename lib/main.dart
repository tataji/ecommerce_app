import 'file:///C:/Users/91850/Desktop/Deepak/Main%20File/Android%20Files/e_commerce/lib/utils/AppUtils.dart';
import 'file:///C:/Users/91850/Desktop/Deepak/Main%20File/Android%20Files/e_commerce/lib/screens/HomeScreen.dart';
import 'file:///C:/Users/91850/Desktop/Deepak/Main%20File/Android%20Files/e_commerce/lib/screens/MyCartItemsList.dart';
import 'package:e_commerce/screens/LoginScreen.dart';
import 'package:e_commerce/screens/SplashScreen.dart';
import 'package:e_commerce/utils/SizeConfig.dart';
import 'package:e_commerce/utils/constants.dart';
/// Flutter code sample for BottomNavigationBar
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/NavDrawer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
  [DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: appbarGreenColor,
        appBarTheme: AppBarTheme(color: appbarGreenColor)),
      title: "",debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class BottomMenuHomeScreen extends StatefulWidget {
  int index;
  BottomMenuHomeScreen({Key key,this.index}) : super(key: key);

  @override
  _BottomMenuHomeScreenState createState() => _BottomMenuHomeScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomMenuHomeScreenState extends State<BottomMenuHomeScreen> {
  int _selectedIndex = 0;
  static  TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black);
  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Explore UI',
      style: optionStyle,
    ),
    Text(
      'Savings UI',
      style: optionStyle,
    ),
    MyCartItemList(),
  ];
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index!=null){
        _selectedIndex = widget.index;
    }
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppUtils.buildAppBar(context),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: true,type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Your Items',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: appbarGreenColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
