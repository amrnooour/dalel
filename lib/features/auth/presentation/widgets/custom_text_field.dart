import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String labelText;
  bool obscureText;
  Widget? suffixIcon;
  CustomTextField({Key? key,required this.labelText,this.obscureText = false,this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 8,top: 24),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.poppins500style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          suffixIcon: suffixIcon,
        ),
        obscureText: obscureText,
      ),
    );
  }
  OutlineInputBorder getBorderStyle(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.grey)
    );
  }
}
