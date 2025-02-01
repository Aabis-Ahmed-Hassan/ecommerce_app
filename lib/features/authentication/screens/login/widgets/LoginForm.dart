import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utility/constants/sizes.dart';
import '../../../../../utility/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                hintText: TextStrings.email,
              ),
            ),
            // space
            SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            // password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
                hintText: TextStrings.password,
              ),
            ),
            // space
            SizedBox(
              height: Sizes.sm,
            ),

            // remember me & forget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (a) {},
                    ),
                    Text(
                      TextStrings.rememberMe,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(TextStrings.forgetPassword),
                ),
              ],
            ),
            // space
            SizedBox(
              height: Sizes.md,
            ),
            // sign in
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  TextStrings.signIn,
                ),
              ),
            ),
            // space
            SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            // sign up
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () {}, child: Text('Sign Up')),
            ),
          ],
        ),
      ),
    );
  }
}
