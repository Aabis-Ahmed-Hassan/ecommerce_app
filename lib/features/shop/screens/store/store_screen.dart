import 'package:ecommerce_app/common/widgets/custom_shapes/conatiners/circular_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utility/constants/enums.dart';
import 'package:ecommerce_app/utility/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/app_bar/my_app_bar.dart';
import '../../../../common/widgets/custom_shapes/conatiners/search_container.dart';
import '../../../../common/widgets/products/cart/cart_counter_icon.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/sizes.dart';
import '../../../../utility/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(
            onTap: () {},
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: HelperFunctions.isDarkMode(context)
                  ? MyColors.black
                  : MyColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(MySizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    // -- search bar
                    SizedBox(height: MySizes.spaceBtwItems),
                    SearchContainer(
                      title: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: MySizes.spaceBtwSections),
                    // -- featured brands

                    SectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: MySizes.spaceBtwItems / 1.5,
                    ),

                    GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return CircularContainer(
                            showBorder: true,
                            padding: EdgeInsets.all(
                              MySizes.sm,
                            ),
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // flexible will cover the least size in the row required
                                Flexible(
                                  child: CircularImage(
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: isDark
                                        ? MyColors.white
                                        : MyColors.black,
                                    image: ImageStrings.clothIcon,
                                  ),
                                ),
                                SizedBox(width: MySizes.spaceBtwItems),
                                //   text
                                // expanded will cover  all the space left besides flexible and sizedbox
                                Expanded(
                                  child: Column(
                                    // content of the column will be appeared in the center
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '250 Products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
