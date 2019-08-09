import 'package:flutter/material.dart';
import 'package:yemek_tarifleri/screens/productDetail.dart';
import 'package:yemek_tarifleri/utilities/constants.dart';

class Routes {
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) => ProductDetail()
  };

}