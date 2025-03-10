import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = MySizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : isDark
                ? MyColors.black.withValues(alpha: 0.9)
                : MyColors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
