import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/utility/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/conatiners/circular_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CurvedEdgesWidget(
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
                        backgroundColor:
                            MyColors.textWhite.withValues(alpha: 0.1),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      right: -300,
                      child: CircularContainer(
                        backgroundColor:
                            MyColors.textWhite.withValues(alpha: 0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
