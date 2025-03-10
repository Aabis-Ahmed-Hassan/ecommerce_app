import 'package:ecommerce_app/common/widgets/custom_shapes/conatiners/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:ecommerce_app/utility/constants/image_strings.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/conatiners/search_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = HomeController.instance;
    final controller = Get.put(HomeController());
    print('build');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  HomeAppBar(),
                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  // search text field
                  SearchContainer(
                    title: 'Search',
                  ),

                  SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Categories',
                          showActionButton: false,
                          textColor: MyColors.white,
                        ),
                        SizedBox(
                          height: MySizes.spaceBtwItems,
                        ),
                        // horizontal row showing categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //   body
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: PromoSlider(
                banners: [
                  ImageStrings.promoBanner1,
                  ImageStrings.promoBanner2,
                  ImageStrings.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
