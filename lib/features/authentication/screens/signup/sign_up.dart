import 'package:ecommerce_app/common/widgets/login_signup/my_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_icons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // heading
                Text(
                  TextStrings.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // space
                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                // signup form (name, username, email, phone, password, I agree, create button)
                SignUpForm(),
                // space
                SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                // divider
                MyDivider(title: TextStrings.orSignUpWith),
                // space
                SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                // sign up with socials
                SocialIcons(),
                // space
                SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ));
  }
}
