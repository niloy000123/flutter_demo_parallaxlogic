import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/component/widgets.dart';
import 'package:flutter_demo_parallaxlogic/utils/size_config.dart';
import 'package:flutter_demo_parallaxlogic/view/product_detail/component/body.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';
import '../../view_model/product_detail_view_model.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  static String routeName = "/prodduct_detail";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    var id = args['id'];
    return Scaffold(
      appBar: AppBar(
          title: customText(
              text: 'Details', fontSize: getProportionateScreenWidth(FONT_L))),
      body: SafeArea(
        child: ChangeNotifierProvider<ProductDetailViewModel>(
          create: (context) => ProductDetailViewModel(id),
          child: Consumer<ProductDetailViewModel>(
            builder: (context, provider, child) {
              return Body(
                productDetailProvider: provider,
              );
            },
          ),
        ),
      ),
    );
  }
}
