import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class Shadows {
  static final verticalProductShadow = BoxShadow(
    color: MyColors.darkerGrey.withValues(
      alpha: 0.1,
    ),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: MyColors.darkerGrey.withValues(
      alpha: 0.1,
    ),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
