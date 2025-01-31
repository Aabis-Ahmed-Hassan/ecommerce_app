import 'package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/sizes.dart';

class OnboardingIndicators extends StatelessWidget {
  const OnboardingIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: Sizes.appBarHeight + 25,
      left: Sizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: Theme.of(context).brightness == Brightness.dark
              ? MyColors.light
              : MyColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
