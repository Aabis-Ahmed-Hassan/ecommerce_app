import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        // height: 400,
        padding: EdgeInsets.zero,
        color: MyColors.primary,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: MyColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                bottom: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: MyColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
