// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/component/widgets.dart';
import 'package:flutter_demo_parallaxlogic/utils/constants.dart';
import 'package:flutter_demo_parallaxlogic/utils/size_config.dart';

class PriceDescriptionCard extends StatelessWidget {
  const PriceDescriptionCard(
      {super.key, required this.price, required this.description});
  final price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(PADING_M_SIZE)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              text: 'Price : $price\$',
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(FONT_L)),
          SizedBox(
            height: getProportionateScreenWidth(PADING_M_SIZE),
          ),
          customText(
              text: 'Description',
              fontSize: getProportionateScreenWidth(FONT_M),
              fontWeight: FontWeight.bold),
          Text(
            description,
          ),
        ],
      ),
    );
  }
}
