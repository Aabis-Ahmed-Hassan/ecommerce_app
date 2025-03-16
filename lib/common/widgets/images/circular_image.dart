import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utility/constants/sizes.dart';
import '../../../utility/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key? key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = MySizes.sm,
    this.isNetworkImage = false,
  }) : super(key: key);

  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // If image background color is null then switch it to light and dark mode color design.
        color: backgroundColor ??
            (HelperFunctions.isDarkMode(context)
                ? MyColors.black
                : MyColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
