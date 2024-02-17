import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/tems_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
      listener: (context,state){
        if(state is SignupSuccessState){
          customToast("Successfully , Check your email to verify your account");
          customReplacementNavigate(context, "/signin");
        }else if(state is SignupFailureState){
          customToast(state.errorMessage);
        }
      },
      builder: (context,state){
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signupFormKey,
            child: Column(
          children: [
            CustomTextField(labelText: AppStrings.fristName,onChanged: (firstName){
              authCubit.firstName = firstName;
            },),
            CustomTextField(labelText: AppStrings.lastName,onChanged: (lastName){
              authCubit.lastName = lastName;
            },),
            CustomTextField(labelText: AppStrings.emailAddress,onChanged: (emailAddress){
              authCubit.emailAddress = emailAddress;
            },),
            CustomTextField(
              suffixIcon: IconButton(
                  onPressed: (){
                  authCubit.isPasswordVisibleOrNotVisible();
                  }, icon: authCubit.isObscure ==true? const Icon(Icons.visibility_off) : const Icon(Icons.visibility) ,),
              labelText: AppStrings.password,obscureText: authCubit.isObscure,onChanged: (password){
              authCubit.password = password;
            },),
            const TermsAndConditions(),
            const SizedBox(height: 88,),
            state is SignupLoadingState ? CircularProgressIndicator(color: AppColors.primaryColor,) :
            CustomButton(
                color: authCubit.termsAndConditionCheckBoxValue == false? AppColors.grey : null,
                text: AppStrings.signUp,onPressed: ()async{
              if(authCubit.termsAndConditionCheckBoxValue == true){
              if(authCubit.signupFormKey.currentState!.validate()){
              await authCubit.signUpWithEmailAndPassword();
              }
              }
              }),
          ],
        ));
      },
    );
  }
}