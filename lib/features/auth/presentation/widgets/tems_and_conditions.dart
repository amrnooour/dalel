import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
         Text.rich(TextSpan(children: [
          TextSpan(text: AppStrings.iHaveAgreeToOur,style: CustomTextStyles.Poppins400style12),
          TextSpan(text: AppStrings.termsAndCondition,style: CustomTextStyles.Poppins400style12.copyWith(decoration:
          TextDecoration.underline)),
        ]))
      ],
    );
  }
}
