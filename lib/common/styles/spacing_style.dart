import 'package:flutter/material.dart';

import '../../utility/constants/sizes.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight + 20,
    bottom: MySizes.defaultSpace,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
  );
}
