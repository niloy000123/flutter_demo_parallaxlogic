import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/utils/routs.dart';
import 'package:flutter_demo_parallaxlogic/utils/theme.dart';
import 'package:flutter_demo_parallaxlogic/view/home/home_screen.dart';
import 'package:flutter_demo_parallaxlogic/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'demo-parallaxlogic',
        theme: theme(),
        initialRoute: HomeScreen.routeName,
        routes: routes,
      ),
    );
  }
}
