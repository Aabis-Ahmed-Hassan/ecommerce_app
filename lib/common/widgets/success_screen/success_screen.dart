import 'package:ecommerce_app/common/styles/spacing_style.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onTap});

  String image, title, subtitle;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  image,
                ),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onTap,
                  child: Text(TextStrings.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
