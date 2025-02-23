import 'package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_indicators.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utility/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                title: TextStrings.onboardingTitle1,
                subtitle: TextStrings.onBoardingSubTitle1,
              ),
              OnboardingPage(
                title: TextStrings.onBoardingTitle2,
                subtitle: TextStrings.onBoardingSubTitle2,
              ),
              OnboardingPage(
                title: TextStrings.onBoardingTitle3,
                subtitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // navigation buttons
          OnboardingIndicators(),

          //   forward button
          OnboardingNextButton(),
          // skip button
          Positioned(
            top: Sizes.appBarHeight,
            right: Sizes.defaultSpace,
            child: InkWell(
              onTap: () => controller.skipPage(),
              child: Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}
