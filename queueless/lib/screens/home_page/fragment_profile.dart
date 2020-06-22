import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,40,16,0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Random',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                    Text('emailid@email.com',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0
                        ),
                      ),
                    Text('View Profile',
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/propic.png'),
                ),
              ],

            ),
              SizedBox(height: 8),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                children: <Widget>[
                  Image.asset('assets/images/order.png', width:24, height:24),
                  SizedBox(width: 8),
                  Expanded(
                    child:Text('Orders',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    ),

                  ),
                  Text('>',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),


                ],
              ),
              Row(
                children: <Widget>[
                  Image.asset('assets/images/heart.png', width:24, height:24),
                  SizedBox(width: 8),
                  Expanded(
                    child:Text('Help',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    ),

                  ),
                  Text('>',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),


                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                children: <Widget>[

                  Expanded(
                    child:Text('About',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    ),

                  ),
                  Text('>',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),


                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                children: <Widget>[

                  Expanded(
                    child:Text('Send Feedback',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    ),

                  ),
                  Text('>',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),


                ],
              ),
              Row(
                children: <Widget>[

                  Expanded(
                    child:Text('Rate us',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0
                      ),
                    ),

                  ),
                  Text('>',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                  ),


                ],
              ),
              InkWell(
                onTap: (){
                  showSignOutDialog(context);
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Text('Log Out',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0
                        ),
                      ),

                    ),
                    Text('>',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return new AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: new Text(
            'Are you sure?',
          ),
          content: new Text(
            'Do you want to logout',
          ),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text(
                'No',
                style: TextStyle(
                    color: Colors.indigoAccent),
              ),
            ),
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(false);
                _signOut();
              },
              child: new Text(
                'Yes',
                style: TextStyle(
                    color: Colors.indigoAccent),
              ),
            ),
          ],
        );
      },
    );
  }

  _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed('/login');
  }
}
