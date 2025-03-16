import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/sizes.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = MySizes.cardRadiusLg,
    this.padding = EdgeInsets.zero,
    this.child,
    this.backgroundColor = MyColors.white,
    this.margin,
    this.showBorder = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: showBorder
            ? Border.all(
                color: MyColors.grey,
              )
            : null,
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
