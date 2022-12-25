// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../component/widgets.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class TitlePriceCard extends StatelessWidget {
  const TitlePriceCard({
    super.key,
    this.title,
    this.price,
  });
  final String? title;
  final price;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(PADING_M_SIZE)),
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.grey.withOpacity(.01),
            Colors.grey.withOpacity(.1)
          ])),
      child: Column(
        children: [
          customText(
              text: title!,
              color: Colors.black,
              fontSize: getProportionateScreenWidth(FONT_S)),
          Text(
            '$price\$',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProportionateScreenWidth(FONT_M),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
