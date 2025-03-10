import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/conatiners/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Column(
      children: [
        // carousel
        CarouselSlider(
          items: banners.map((imageAddress) {
            return RoundedImage(imageAddress: imageAddress);
          }).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (int newPage, CarouselPageChangedReason x) {
              controller.onChange(newPage);
            },
          ),
        ),
        SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        //   carousel navigation dots

        Obx(() {
          print('navigation dots');
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselIndex == i
                      ? MyColors.primary
                      : MyColors.grey,
                  margin: EdgeInsets.only(right: 10),
                ),
            ],
          );
        })
      ],
    );
  }
}
