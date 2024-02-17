import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../auth_cubit/auth_cubit.dart';
import '../auth_cubit/auth_state.dart';
import 'custom_text_field.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
      listener: (context,state){
        if(state is ResetPasswordSuccessState){
          customToast("Check your Email to Reset Password");
          customReplacementNavigate(context, "/signin");
        }else if(state is ResetPasswordFailureState){
          customToast(state.errorMessage);
        }
      },
      builder: (context,state){
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
              key: authCubit.restPasswordFormKey,
              child: Column(
                children: [
                  CustomTextField(labelText: AppStrings.emailAddress,onChanged: (emailAddress){
                    authCubit.emailAddress = emailAddress;
                  },),
                  const SizedBox(height:129,),
                  state is ResetPasswordLoadingState ? CircularProgressIndicator(color: AppColors.primaryColor,) :
                  CustomButton(
                      text: AppStrings.sendResetPasswordLink,onPressed: ()async{
                    if(authCubit.restPasswordFormKey.currentState!.validate()){
                      await authCubit.resetPasswordWithLink();
                    }
                  }),
                ],
              )),
        );
      },
    );
  }
}
