import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customReplacementNavigate(context,"/forgotPassword");
      },
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(AppStrings.forgotPassword,style: CustomTextStyles.poppins600style28.copyWith(fontSize: 12),)),
    );
  }
}
