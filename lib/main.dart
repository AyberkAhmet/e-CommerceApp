import 'package:flutter/material.dart';
import 'package:yemek_tarifleri/screens/productList.dart';
import 'package:yemek_tarifleri/utilities/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
      routes: Routes.routes,
    );
  }
}

