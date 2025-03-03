import 'package:flutter/material.dart';

import '../../../../../utility/constants/sizes.dart';
import '../../../../../utility/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  String title, subtitle, image;

  OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: DeviceUtils.getScreenHeight() * 0.6,
            width: DeviceUtils.getScreenWidth(context) * 0.8,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MySizes.defaultSpace,
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
