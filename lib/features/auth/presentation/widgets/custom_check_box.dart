import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../auth_cubit/auth_cubit.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({Key? key}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(color: AppColors.grey),
        value: value, onChanged: (newValue){
      setState(() {
        value = newValue;
        BlocProvider.of<AuthCubit>(context).updateTermsAndConditionCheckBox(newValue: newValue);
      });
    });
  }
}
