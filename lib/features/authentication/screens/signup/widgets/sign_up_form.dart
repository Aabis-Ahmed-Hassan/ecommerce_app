import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/sizes.dart';
import '../../../../../utility/constants/text_strings.dart';
import '../../../../../utility/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    hintText: TextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: Sizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    hintText: TextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: TextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: TextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: TextStrings.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: TextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(
            height: Sizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (a) {},
                ),
              ),
              SizedBox(
                width: Sizes.sm,
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'I agree to ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: TextStrings.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              decoration: TextDecoration.underline,
                              color: isDark ? Colors.white : MyColors.primary,
                              decorationColor:
                                  isDark ? Colors.white : MyColors.primary,
                            ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: TextStrings.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              decoration: TextDecoration.underline,
                              color: isDark ? Colors.white : MyColors.primary,
                              decorationColor:
                                  isDark ? Colors.white : MyColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
