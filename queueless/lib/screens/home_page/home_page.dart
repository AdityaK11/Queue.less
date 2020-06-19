import 'dart:io';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:queueless/components/hex_color.dart';

import 'fragment_home.dart';
import 'fragment_profile.dart';
import 'fragment_your_orders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex;
  int _stackIndex;

  static final homeFragment = new HomeFragment();
  static final profileFragment = new ProfileFragment();
  static final yourOrdersFragment = new YourOrdersFragment();

  @override
  void initState() {
    _selectedIndex = 0;
    _stackIndex = 0;
    super.initState();
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _stackIndex = 0;
          break;
        case 1:
          _stackIndex = 1;
          break;
        case 2:
          _stackIndex = 2;
      }
    });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        title: new Text(
          'Are you sure?',
        ),
        content: new Text(
          'Do you want to exit the app',
        ),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'No',
              style: TextStyle(
                  color: HexColor('#E1544E'), fontFamily: 'Poppins'),
            ),
          ),
          new FlatButton(
            onPressed: () {
              Navigator.of(context).pop(false);
              exit(0);
            },
            child: new Text(
              'Yes',
              style: TextStyle(
                  color: HexColor('#E1544E'), fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: Scaffold(
          body: IndexedStack(
            children: <Widget>[
              homeFragment,
              yourOrdersFragment,
              profileFragment
            ],
            index: _stackIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.npmOutline),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.shoppingBagOutline),
                title: Text('Orders'),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.personOutline),
                title: Text('Profile'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: HexColor('#E1544E'),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
