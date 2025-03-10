import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = EdgeInsets.zero,
      this.child,
      this.backgroundColor = MyColors.white,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
