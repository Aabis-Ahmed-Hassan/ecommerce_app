import 'package:ecommerce_app/utility/constants/image_strings.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utility/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                CupertinoIcons.clear,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  ImageStrings.deliveredEmailIllustration,
                ),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(TextStrings.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                TextStrings.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(TextStrings.done),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    TextStrings.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
