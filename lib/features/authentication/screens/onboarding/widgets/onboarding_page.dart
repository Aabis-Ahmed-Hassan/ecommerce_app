import 'package:flutter/material.dart';

import '../../../../../utility/constants/image_strings.dart';
import '../../../../../utility/constants/sizes.dart';
import '../../../../../utility/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  String title, subtitle;

  OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: DeviceUtils.getScreenHeight() * 0.6,
            width: DeviceUtils.getScreenWidth(context) * 0.8,
            image: AssetImage(ImageStrings.randomImage),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: Sizes.defaultSpace,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
