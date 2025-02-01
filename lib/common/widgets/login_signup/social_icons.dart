import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';
import '../../../utility/constants/image_strings.dart';
import '../../../utility/constants/sizes.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: MyColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: Sizes.iconMd,
              width: Sizes.iconMd,
              image: AssetImage(
                ImageStrings.google,
              ),
            ),
          ),
        ),
        SizedBox(
          width: Sizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: MyColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: Sizes.iconMd,
              width: Sizes.iconMd,
              image: AssetImage(
                ImageStrings.facebook,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
