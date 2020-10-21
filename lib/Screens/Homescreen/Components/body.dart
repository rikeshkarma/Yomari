import 'package:yomari/Screens/Homescreen/Components/NavBarItems/AlertsNavbar.dart';
import 'package:yomari/Screens/Homescreen/Components/NavBarItems/MessengerNavbar.dart';
import 'package:yomari/Screens/Homescreen/Components/NavBarItems/MyAdsNavBar.dart';
import 'package:yomari/Screens/Homescreen/Components/NavBarItems/MyprofileNabBar.dart';
import 'package:yomari/Screens/Homescreen/Components/NavBarItems/homeNavBar.dart';
import 'package:yomari/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    MyAds(),
    Messenger(),
    Alerts(),
    MyProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ad_units_outlined,
              color: kPrimaryColor,
            ),
            label: 'My Ads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: kPrimaryColor,
            ),
            label: 'Messenger',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
              color: kPrimaryColor,
            ),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: kPrimaryColor,
            ),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
