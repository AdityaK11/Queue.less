import 'package:flutter/material.dart';

class YourOrdersFragment extends StatefulWidget {
  @override
  _YourOrdersFragmentState createState() => _YourOrdersFragmentState();
}

class _YourOrdersFragmentState extends State<YourOrdersFragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('Your Orders Page')),
      ),
    );
  }
}
