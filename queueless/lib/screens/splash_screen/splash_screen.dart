import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();

    Timer(Duration(seconds: 3), () {
      FirebaseAuth.instance.currentUser().then((firebaseUser){
        if(firebaseUser == null)
        {
          Navigator.pushReplacementNamed(context, '/login');
        }
        else{
          Navigator.pushReplacementNamed(context, '/home');
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('SplashScreen')),
      ),
    );
  }
}
