import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/conatiners/circular_container.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:ecommerce_app/utility/constants/image_strings.dart';
import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(1),
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            Shadows.verticalProductShadow,
          ],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: isDark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            //thumbnail, discount, wishlist icon
            CircularContainer(
              height: 180,
              padding: EdgeInsets.all(MySizes.sm),
              backgroundColor: isDark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  // product image
                  RoundedImage(
                    imageAddress: ImageStrings.productImage1,
                    makeRoundedCorners: true,
                  ),
                  // discount
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      radius: MySizes.sm,
                      backgroundColor:
                          MyColors.secondary.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),
                  //   wishlist icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),
            //   details (product name, company name, company status, price etc.)
            Padding(
              padding: EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product title
                  ProductTitleText(
                    title: 'Nike Shoes',
                    isSmallSize: true,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwItems / 2,
                  ),

                  // company name and status (verified etc.)
                  Row(
                    children: [
                      // company name
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(
                        width: MySizes.xs,
                      ),
                      // verified icon
                      Icon(
                        Iconsax.verify5,
                        color: MyColors.primary,
                        size: MySizes.iconXs,
                      ),
                    ],
                  ),
                  // Price and Add to Cart button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //   price
                      ProductPriceText(price: '35.3'),
                      // add to cart (+) icon
                      Container(
                        decoration: BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(MySizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          height: MySizes.iconLg * 1.2,
                          width: MySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
