import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/enums.dart';
import '../../../../utility/constants/sizes.dart';
import 'brand_title_text.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = MyColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // company name

        Flexible(
          child: BrandTitleText(
            text: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        SizedBox(
          width: MySizes.xs,
        ),
        // verified icon
        Icon(
          Iconsax.verify5,
          size: MySizes.iconXs,
          color: iconColor,
        ),
      ],
    );
  }
}
