import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/utility/constants/image_strings.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(Login()),
              icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  ImageStrings.deliveredEmailIllustration,
                ),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(TextStrings.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: MySizes.spaceBtwItems),
              Text('aabis@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                TextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: ImageStrings.staticSuccessIllustration,
                        title: TextStrings.yourAccountCreatedTitle,
                        subtitle: TextStrings.yourAccountCreatedSubTitle,
                        onTap: () {
                          Get.to(() {
                            return Login();
                          });
                        },
                      )),
                  child: Text(TextStrings.tContinue),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TextStrings.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
