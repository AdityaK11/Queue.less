import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:queueless/components/hex_color.dart';
import 'package:queueless/screens/auth_page/fragment_login.dart';
import 'package:queueless/screens/auth_page/fragment_register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 64, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Queue.less',
                style: TextStyle(
                    fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(
                            fontSize: 16,
                          ),
                          labelColor: Colors.indigoAccent,
                          indicatorColor: Colors.indigoAccent,
                          tabs: [
                            new Tab(
                              text: 'Sign In',
                            ),
                            new Tab(
                              text: 'Sign Up',
                            )
                          ]
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                              children: [
                                LoginFragment(),
                                RegisterFragment()
                              ]
                          ),
                        ),
                      ),
                    ],
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
