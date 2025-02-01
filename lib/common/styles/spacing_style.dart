import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: Sizes.appBarHeight + 20,
    bottom: Sizes.defaultSpace,
    left: Sizes.defaultSpace,
    right: Sizes.defaultSpace,
  );
}
