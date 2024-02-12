import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';

class CustomSmoothIndicator extends StatelessWidget {
  PageController controller;
   CustomSmoothIndicator({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(controller: controller, count: 3,effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 7,
        dotWidth: 10
    )
    );
  }
}
