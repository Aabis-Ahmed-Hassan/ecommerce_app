import 'package:ecommerce_app/utility/constants/sizes.dart';
import 'package:ecommerce_app/utility/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.actions,
    this.leadingIcon,
    this.leadingOnPress,
  });

  final Widget? title;
  final bool showBackArrow;

  final List<Widget>? actions;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySizes.md),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Iconsax.arrow_left,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPress,
                    icon: Icon(
                      leadingIcon,
                    ),
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
