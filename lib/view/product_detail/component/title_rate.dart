import 'package:flutter/material.dart';
import '../../../component/star_rating.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class TitleRateCard extends StatelessWidget {
  const TitleRateCard({Key? key, this.title, this.rating}) : super(key: key);
  final String? title;
  final double? rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(PADING_M_SIZE)),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title!,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(FONT_M),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  const Spacer(),
                  StarRating(
                    rating: rating!,
                    color: Colors.orange[400],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
