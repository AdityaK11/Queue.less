import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:queueless/Models/orderList.dart';
import 'package:intl/intl.dart';
import 'package:queueless/components/widgets.dart';

class YourOrdersFragment extends StatefulWidget {
  @override
  _YourOrdersFragmentState createState() => _YourOrdersFragmentState();
}

class _YourOrdersFragmentState extends State<YourOrdersFragment> {
  final List<Orders> orders = [
    Orders(
        id: 'Order 1',
        storeName: 'Heart Lounge',
        storeLocation:'Katpadi, Vellore',
        itemList: ['Item 1','Item 2','Item 3'],
        amount: 350,
        status:'Placed',
        storeUrl: 'assets/images/store.jpg',
        date: DateTime.now()),
    Orders(
        id: 'Order 2',
        storeName: 'Heart Lounge',
        storeLocation:'Katpadi, Vellore',
        itemList: ['Item 1','Item 2'],
        amount: 200,
        status:'Delivered',
        storeUrl:'assets/images/store.jpg',
        date: DateTime.now()),
    Orders(
        id: 'Order 3',
        storeName: 'Heart Lounge',
        storeLocation:'Katpadi, Vellore',
        itemList: ['Item 1','Item 2','Item 3','Item 4'],
        amount: 300,
        status:'Packed',
        storeUrl:'assets/images/store.jpg',
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 40, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 28,
//                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      children: orders.map((tx) {
                        return OrderCard(context, tx);
                      }).toList(),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
