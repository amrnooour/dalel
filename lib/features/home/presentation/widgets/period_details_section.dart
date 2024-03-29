import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PeriodDetailsSection extends StatelessWidget {
  String periodName;
  String description;
  String image;
  PeriodDetailsSection({Key? key,required this.periodName,required this.description,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(text: "About $periodName"),
            SizedBox(width: 7,),
            SvgPicture.asset(AppAssets.warsLogo),
          ],
        ),
        SizedBox(height: 47,),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
              Positioned(
                  top: -24,
                  child: SvgPicture.asset(AppAssets.pyramidsLogo)),
              SizedBox(
                  width: 196,
                  height: 220,
                  child: Text(description,maxLines: 10,overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.poppins500style14.copyWith(color: AppColors.black),))
            ],),
            const SizedBox(width: 16,),
            SizedBox(
              width: 131,
              height: 203,
              child: CachedNetworkImage(
              imageUrl: image,
            ),)
          ],
        )
      ],
    );
  }
}
