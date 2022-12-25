import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/product_detail_screen.dart';

import '../view/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
};
