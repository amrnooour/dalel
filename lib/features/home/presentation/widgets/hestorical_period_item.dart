import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class HestoricalPeriodItem extends StatelessWidget {
  const HestoricalPeriodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 96,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [BoxShadow(color: AppColors.grey,blurRadius: 10,offset: Offset(0,7))]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 16,),
          SizedBox(
            height: 48,
            width: 62,
            child: Text("Ancient Egypt",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins500style18.copyWith(fontSize: 16,color: AppColors.deepBrown),
            ),
          ),
          Container(
            height: 64,
            width: 47,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.test1))),),
          SizedBox(width: 16,),
        ],
      ),
    );
  }
}