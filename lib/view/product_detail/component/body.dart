import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/component/widgets.dart';
import 'package:flutter_demo_parallaxlogic/utils/size_config.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/component/price_description.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/component/produc_image.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/component/title_rate.dart';

import '../../../model/app_loding.dart';
import '../../../utils/constants.dart';
import '../../../view_model/product_detail_view_model.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.productDetailProvider});
  final ProductDetailViewModel? productDetailProvider;
  @override
  Widget build(BuildContext context) {
    if (productDetailProvider!.loading) {
      return const AppLoading(
        title: 'Details Loading...',
      );
    }
    if (productDetailProvider!.productError != null) {
      return errorWidget(
          productDetailProvider!.productError!.message.toString());
    }
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(PADING_M_SIZE),
            vertical: getProportionateScreenWidth(PADING_M_SIZE)),
        child: Column(
          children: [
            ProductImageCard(
              image: productDetailProvider!.product!.image,
            ),
            TitleRateCard(
              title: productDetailProvider!.product!.title,
              rating: productDetailProvider!.product!.rating!.rate.toDouble(),
            ),
            PriceDescriptionCard(
                price: productDetailProvider!.product!.price,
                description: productDetailProvider!.product!.description!),
            custoButton("Add To Cart")
          ],
        ),
      ),
    );
  }
}
