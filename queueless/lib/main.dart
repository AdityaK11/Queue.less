import 'package:flutter/material.dart';
import 'package:queueless/screens/cart_page/cart_page.dart';
import 'package:queueless/screens/checkout_page/checkout_page.dart';
import 'package:queueless/screens/home_page/home_page.dart';
import 'package:queueless/screens/login_page/login_page.dart';
import 'package:queueless/screens/order_details_page/order_details_page.dart';
import 'package:queueless/screens/product_details_page/product_details_page.dart';
import 'package:queueless/screens/products_page/products_page.dart';
import 'package:queueless/screens/register_page/register_page.dart';
import 'package:queueless/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.light,

        fontFamily: 'Poppins',

        textTheme: TextTheme(

        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/products': (context) => ProductsPage(),
        '/productDetails': (context) => ProductDetailsPage(),
        '/orderDetails': (context) => OrderDetailsPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
