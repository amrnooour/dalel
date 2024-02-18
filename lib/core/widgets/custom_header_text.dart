import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  final String text;
  const CustomHeaderText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: CustomTextStyles.poppins400style20,);
  }
}
