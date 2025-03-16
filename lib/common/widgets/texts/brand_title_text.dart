import 'package:flutter/material.dart';

import '../../../../utility/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.text,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String text;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        // check which brandsize is required and set that style
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
            : brandTextSizes == TextSizes.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color));
  }
}
