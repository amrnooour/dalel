import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  String text1,text2;
  void Function()? onTap;
  HaveAnAccount({Key? key,required this.text1,required this.text2,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(TextSpan(
          children: [
            TextSpan(text: text1,style: CustomTextStyles.Poppins400style12),
            TextSpan(text: text2,style: CustomTextStyles.Poppins400style12.copyWith(color: AppColors.lightGrey))
          ]
        )),
      ),
    );
  }
}
