import 'package:flutter/material.dart';
import 'package:fudy_pro/utils/raouts_utils.dart';
import 'package:fudy_pro/views/screens/cart_page.dart';
import 'package:fudy_pro/views/screens/detail_page.dart';
import 'package:fudy_pro/views/screens/home_page.dart';

void main() => runApp(const MyApp(),);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRouts.home:(context) => const HomePage(),
        MyRouts.detail_page:(context) => const DetailPage(),
        MyRouts.cart_page:(context) => const CartPage(),
      },
    );
  }
}
