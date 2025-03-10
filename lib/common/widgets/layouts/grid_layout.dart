import 'package:flutter/material.dart';

import '../../../utility/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout(
      {super.key,
      this.mainAxisExtent = 290,
      this.mainAxisSpacing = MySizes.gridViewSpacing,
      this.crossAxisSpacing = MySizes.gridViewSpacing,
      required this.itemCount,
      required this.itemBuilder});

  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double mainAxisExtent;

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder);
  }
}
