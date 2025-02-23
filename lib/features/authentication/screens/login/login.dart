import 'package:ecommerce_app/common/widgets/login_signup/my_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_icons.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/LoginForm.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_style.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: SpacingStyle.paddingWithAppbarHeight,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo, title & subtitle

            LoginHeader(),
            //   Email, password, remember, forget psw,login & register button,
            LoginForm(),

            //   sign in divider
            MyDivider(title: TextStrings.orSignInWith),
            // Space
            SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            //   login with google/fb
            SocialIcons(),
          ],
        ),
      ),
    ));
  }
}
