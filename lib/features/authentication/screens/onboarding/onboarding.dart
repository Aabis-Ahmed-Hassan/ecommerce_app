import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
        ],
      ),
    );
  }
}
