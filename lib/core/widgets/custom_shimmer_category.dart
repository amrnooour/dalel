import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../utils/app_colors.dart';

class CustomShimmerCategory extends StatelessWidget {
  double height;
  double width;
  CustomShimmerCategory({Key? key,required this.height,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
          baseColor: AppColors.grey,
          highlightColor: Colors.white,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: AppColors.grey,),
          )
      ),
    );
  }
}
