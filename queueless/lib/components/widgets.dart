import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:queueless/Models/orderList.dart';
import 'package:intl/intl.dart';

Widget OrderCard(BuildContext context , Orders tx){
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, '/orderDetails');
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(2,2,0,0),
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(tx.storeUrl),
                ),
                title: Container(
//                                              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.storeName,
                        style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
                      ),
                      Text(tx.storeLocation,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize:12)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:8,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: tx.itemList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Container(
                        child:
                        Text('${tx.itemList[index]}',
                          style: TextStyle(fontSize:12),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 8,
              ),
              Text('Ordered on: ',style:TextStyle(color:Colors.grey,fontSize: 12)),
              Text('${DateFormat.yMMMd().format(tx.date)}',style:TextStyle(fontSize: 12)),
              SizedBox(
                height: 8,
              ),
              Text('Total Amount: ',style:TextStyle(color:Colors.grey,fontSize: 12)),
              Text('${tx.amount}',style:TextStyle(fontSize: 12)),
              SizedBox(
                height: 8,
              ),
              Divider(color:Colors.grey,thickness: 1),
              Row(
                children: <Widget>[
                  Text('Status: ' ,style: TextStyle(color: Colors.grey,fontSize: 12)),
                  Text('${tx.status}', style: tx.status=='Packed'||tx.status=='Placed' ? TextStyle(color: Colors.black,fontSize: 12): TextStyle(color: Colors.red,fontSize: 12)),
                ],
              ),
//                                  Divider(color:Colors.grey,thickness:1 ,),
            ],
          ),
        ),
      ),
    ),
  );
}