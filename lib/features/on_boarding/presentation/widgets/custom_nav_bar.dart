import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomNavBar extends StatelessWidget {
  void Function()? onTap;
  CustomNavBar({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(AppStrings.skip,style: CustomTextStyles.poppins300style16.copyWith(fontWeight: FontWeight.w400),)),
    );
  }
}
