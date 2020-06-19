import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:queueless/components/hex_color.dart';

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
                                SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 22,),
                                      Text(
                                        'Welcome,',
                                        style: TextStyle(
                                            fontSize: 22
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        'Sign in to continue',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 12,),
                                      TextField(
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Email',
                                          icon: const Icon(EvaIcons.emailOutline),
                                        ),
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.visiblePassword,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Password',
                                          icon: const Icon(EvaIcons.lockOutline),
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                          'Forgot Password?'
                                      ),
                                      SizedBox(height: 32,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/google.png',
                                            height: 48,
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 16),
                                            decoration: BoxDecoration(
                                                color: Colors.indigoAccent,
                                                shape: BoxShape.circle
                                            ),
                                            child: IconButton(
                                              onPressed: (){Navigator.pushNamed(context, '/home');},
                                              icon: Icon(
                                                EvaIcons.arrowForwardOutline,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 22,),
                                      Text(
                                        'Create Account,',
                                        style: TextStyle(
                                            fontSize: 22
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        'Sign up to continue',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18
                                        ),
                                      ),
                                      SizedBox(height: 12,),
                                      TextField(
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Name',
                                          icon: const Icon(EvaIcons.personOutline),
                                        ),
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Email',
                                          icon: const Icon(EvaIcons.emailOutline),
                                        ),
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.visiblePassword,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Password',
                                          icon: const Icon(EvaIcons.lockOutline),
                                        ),
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.visiblePassword,
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          labelText: 'Confirm Password',
                                          icon: const Icon(EvaIcons.lockOutline),
                                        ),
                                      ),
                                      SizedBox(height: 32,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/google.png',
                                            height: 48,
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 16),
                                            decoration: BoxDecoration(
                                                color: Colors.indigoAccent,
                                                shape: BoxShape.circle
                                            ),
                                            child: IconButton(
                                              icon: Icon(
                                                EvaIcons.arrowForwardOutline,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
