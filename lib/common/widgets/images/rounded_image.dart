import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';
import '../../../utility/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.imageAddress,
    this.isNetworkedImage = false,
    this.borderRadius = MySizes.md,
    this.onTap,
    this.height,
    this.width,
    this.padding,
    this.fit = BoxFit.contain,
    this.backgroundColor = MyColors.light,
    this.makeRoundedCorners = true,
    this.border,
  });

  final String imageAddress;
  final bool isNetworkedImage, makeRoundedCorners;
  final double borderRadius;
  final double? height, width;

  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final BoxFit fit;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            image: isNetworkedImage
                ? NetworkImage(imageAddress)
                : AssetImage(imageAddress) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
