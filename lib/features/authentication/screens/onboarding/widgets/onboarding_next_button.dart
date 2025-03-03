import 'package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFunctions.isDarkMode(context);

    final controller = OnboardingController.instance;
    return Positioned(
      bottom: MySizes.appBarHeight,
      right: MySizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark ? MyColors.primary : MyColors.black,
        ),
        child: Icon(
          // Iconsax.arrow_right3,
          Icons.arrow_right_alt,
          color: isDark ? MyColors.white : Colors.white,
          size: MySizes.iconLg,
        ),
      ),
    );
  }
}
