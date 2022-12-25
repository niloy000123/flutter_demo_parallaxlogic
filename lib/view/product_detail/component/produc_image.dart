import 'package:flutter/material.dart';

class ProductImageCard extends StatelessWidget {
  const ProductImageCard({
    Key? key,
    this.image,
  }) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: FadeInImage.assetNetwork(
          placeholder: "assets/spinner.gif",
          image: image!,
          fit: BoxFit.fitHeight,
          imageErrorBuilder: (context, error, stacktrace) {
            return FadeInImage.assetNetwork(
                placeholder: "assets/spinner.gif",
                image: image!,
                fit: BoxFit.fitHeight,
                imageErrorBuilder: (context, error, stacktrace) {
                  return FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: image!,
                      fit: BoxFit.fitHeight,
                      imageErrorBuilder: (context, error, stacktrace) {
                        return const Center(child: Text('Image Not Available'));
                      });
                });
          }),
    );
  }
}
