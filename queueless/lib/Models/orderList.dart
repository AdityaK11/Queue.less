import 'package:flutter/foundation.dart';

class Orders {
  final String id;
  final String storeName;
  final String storeLocation;
  var itemList=new List();
  final double amount;
  final String status;
  final String storeUrl;
  final DateTime date;

  Orders({
    @required this.id,
    @required this.storeName,
    @required this.storeLocation,
    @required this.itemList,
    @required this.amount,
    @required this.status,
    @required this.storeUrl,
    @required this.date}
    );
}