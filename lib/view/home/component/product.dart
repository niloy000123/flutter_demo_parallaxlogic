import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/utils/constants.dart';
import 'package:flutter_demo_parallaxlogic/view/home/component/product_image.dart';
import 'package:flutter_demo_parallaxlogic/view/home/component/title_price.dart';
import '../../../model/product.dart';
import '../../../utils/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);

  final ProductModel? product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(PADING_S_SIZE)),
          ),
          child: Column(
            children: [
              ImageCard(image: product!.image!),
              TitlePriceCard(
                title: product!.title,
                price: product!.price,
              )
            ],
          ),
        ),
      ),
    );
  }
}
