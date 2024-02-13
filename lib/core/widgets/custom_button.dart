import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color? color;
  String text;
  VoidCallback? onPressed;
  TextStyle? style;
  CustomButton({Key? key, this.color,required this.text,this.onPressed,this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(onPressed:onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: color?? AppColors.primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            child:  Text(text,style: style??CustomTextStyles.poppins500style24.copyWith(fontSize:18,color:
            AppColors.offWhite),)));
  }
}
