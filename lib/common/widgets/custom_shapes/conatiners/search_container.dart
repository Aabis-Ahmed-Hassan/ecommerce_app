import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/sizes.dart';
import '../../../../utility/device/device_utility.dart';
import '../../../../utility/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.title,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String title;
  final IconData? icon;
  final bool showBackground, showBorder;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(MySizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? MyColors.dark
                    : MyColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(
              MySizes.cardRadiusLg,
            ),
            border: showBorder ? Border.all(color: MyColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: MyColors.darkerGrey,
              ),
              SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
