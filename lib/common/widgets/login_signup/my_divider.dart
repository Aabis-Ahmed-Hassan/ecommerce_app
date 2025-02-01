import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';
import '../../../utility/helpers/helper_functions.dart';

class MyDivider extends StatelessWidget {
  final String title;

  const MyDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? MyColors.darkGrey : MyColors.grey,
            indent: 60,
            endIndent: 10,
            thickness: 1.5,
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Flexible(
          child: Divider(
            color: isDark ? MyColors.darkGrey : MyColors.grey,
            indent: 10,
            endIndent: 60,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
