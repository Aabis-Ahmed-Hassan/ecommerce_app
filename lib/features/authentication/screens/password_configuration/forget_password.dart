import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Text(
                TextStrings.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text(
                TextStrings.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MySizes.spaceBtwSections * 2,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: TextStrings.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetPassword()),
                    child: Text(
                      TextStrings.submit,
                    )),
              ),
            ],
          ),
        ));
  }
}
