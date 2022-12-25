import 'package:flutter/material.dart';
import 'package:flutter_demo_parallaxlogic/component/widgets.dart';
import 'package:flutter_demo_parallaxlogic/utils/constants.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(PADING_S_SIZE),
        child: FadeInImage.assetNetwork(
            placeholder: "assets/spinner.gif",
            image: image,
            fit: BoxFit.fill,
            imageErrorBuilder: (context, error, stacktrace) {
              return FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: image,
                  fit: BoxFit.fill,
                  imageErrorBuilder: (context, error, stacktrace) {
                    return FadeInImage.assetNetwork(
                        placeholder: "assets/spinner.gif",
                        image: image,
                        fit: BoxFit.fill,
                        imageErrorBuilder: (context, error, stacktrace) {
                          return Center(
                              child: customText(text: 'Image Not Available'));
                        });
                  });
            }),
      ),
    );
  }
}
