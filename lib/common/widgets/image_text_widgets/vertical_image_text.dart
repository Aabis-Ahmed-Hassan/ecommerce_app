import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utility/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.imageAddress,
    required this.onTap,
    this.textColor = MyColors.white,
    this.backgroundColor = MyColors.white,
  });

  final String title, imageAddress;
  final VoidCallback onTap;

  final Color textColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: MySizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(MySizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (isDark ? MyColors.black : MyColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(imageAddress),
                  fit: BoxFit.cover,
                  color: isDark ? MyColors.light : MyColors.dark,
                ),
              ),
            ),
            SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
