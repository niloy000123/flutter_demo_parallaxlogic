import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/component/widgets.dart';
import 'package:flutter_demo_parallaxlogic/utils/size_config.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
              width: getProportionateScreenWidth(100),
              height: getProportionateScreenWidth(100),
              child: Image.asset('assets/spinner.gif')),
          customText(text: title)
        ],
      ),
    );
  }
}
