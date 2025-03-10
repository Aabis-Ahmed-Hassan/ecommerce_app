import 'package:flutter/material.dart';

import '../../../../../common/widgets/app_bar/my_app_bar.dart';
import '../../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextStrings.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyColors.grey),
          ),
          Text(
            TextStrings.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: MyColors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
