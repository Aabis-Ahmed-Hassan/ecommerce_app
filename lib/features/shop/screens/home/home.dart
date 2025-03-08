import 'package:ecommerce_app/common/widgets/custom_shapes/conatiners/primary_header_container.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeaderContainer(
            child: Column(
              children: [
                HomeAppBar(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
