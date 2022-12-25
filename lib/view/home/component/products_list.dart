import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/view/home/component/product.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/product_detail_screen.dart';
import '../../../component/widgets.dart';
import '../../../model/app_loding.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../../view_model/home_view_model.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    Key? key,
    this.homeProvider,
  }) : super(key: key);

  final HomeViewModel? homeProvider;

  @override
  Widget build(BuildContext context) {
    if (homeProvider!.loading) {
      return const AppLoading(
        title: 'Products Loading...',
      );
    }
    if (homeProvider!.productError != null) {
      return errorWidget(homeProvider!.productError!.message.toString());
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
            text: "Products",
            fontSize: getProportionateScreenWidth(FONT_L),
            fontWeight: FontWeight.bold),
        GridView.builder(
          itemCount: homeProvider!.productList!.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .71,
              mainAxisSpacing: getProportionateScreenWidth(PADING_L_SIZE),
              crossAxisSpacing: getProportionateScreenWidth(PADING_M_SIZE)),
          itemBuilder: (context, index) => ProductCard(
            product: homeProvider!.productList![index],
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName,
                  arguments: {
                    'id': homeProvider!.productList![index].id,
                  });
            },
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(PADING_M_SIZE),
        ),
      ],
    );
  }
}
