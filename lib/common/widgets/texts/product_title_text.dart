import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.textAlign,
    this.isSmallSize = false,
    this.maxLines = 2,
  });

  final String title;
  final TextAlign? textAlign;
  final bool isSmallSize;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isSmallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
