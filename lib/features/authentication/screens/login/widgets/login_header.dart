import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utility/constants/image_strings.dart';
import '../../../../../utility/constants/sizes.dart';
import '../../../../../utility/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(
            isDark ? ImageStrings.darkAppLogo : ImageStrings.lightAppLogo,
          ),
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Text(
          TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
