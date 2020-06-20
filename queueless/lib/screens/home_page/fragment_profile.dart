import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          ListView(
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 40, left: 16.0),
                        child:Text('Random',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                          ),
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 16, top:4),
                        child: Text('emailid@email.com',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0
                            ),
                          )
                        ),
                    Padding(
                        padding: EdgeInsets.only(left: 16, top:4),
                        child: Text('View Profile',
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0
                          ),
                        )
                    )
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/propic.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ],
                ),

              ],

            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child:Container(
                          height: 5,
                         width: 400,
                        decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('assets/images/line.png'),
                             fit: BoxFit.fitWidth
                           )
                         )
                    ),
                  ),
                  ],
              ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Padding(
                     padding: EdgeInsets.only(left: 16, top: 8.0),
                     child:Container(
                         height: 30,
                         width: 30,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: AssetImage('assets/images/order.png'),
                                 fit: BoxFit.cover
                             )
                         )
                     ),
                   ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 8.0),
                    child:Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/heart.png'),
                                fit: BoxFit.cover
                            )
                        )
                    ),
                  ),
                ],
                ),
                  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 8.0),
                              child:Text('Orders',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0, left: 8.0),
                                child:Text('Help',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0
                                  ),
                                ),
                              ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 270, right: 16),
                            child:Text('>',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 270, right: 16),
                            child:Text('>',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),



              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child:Container(
                            height: 5,
                            width: 400,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/line.png'),
                                    fit: BoxFit.fitWidth
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),

                  Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 4.0, left: 16, right: 16),
                            child:Text('About',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 300, right: 16),
                            child:Text('>',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0
                              ),
                            ),
                          ),
                        ],
                      ),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child:Container(
                                    height: 5,
                                    width: 400,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/line.png'),
                                            fit: BoxFit.fitWidth
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),


                      Row(
                        children: <Widget>[
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 0.0, left: 16, right: 16),
                                child:Text('Send Feedback',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
                                child:Text('Rate us',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
                                child:Text('Log Out',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 4.0, left: 230, right: 16),
                                child:Text('>',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.0, left: 230, right: 16),
                                child:Text('>',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.0, left: 230, right: 16),
                                child:Text('>',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),
                            ],
                          ),

                    ],
                  ),
                ],
              ),

              );

  }
}
