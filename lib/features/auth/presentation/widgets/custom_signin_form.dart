import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/custom_toast.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_field.dart';

class CustomSigninForm extends StatelessWidget {
  const CustomSigninForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
      listener: (context,state){
        if(state is SigninSuccessState){
          FirebaseAuth.instance.currentUser!.emailVerified?customReplacementNavigate(context, "/homeNavBar"):
          customToast("Please verify your account");
        }else if(state is SigninFailureState){
          customToast(state.errorMessage);
        }
      },
      builder: (context,state){
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signinFormKey,
            child: Column(
              children: [
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
                const SizedBox(height: 16,),
                const ForgotPasswordWidget(),
                const SizedBox(height: 102,),
                state is SigninLoadingState ? CircularProgressIndicator(color: AppColors.primaryColor,) :
                CustomButton(
                    text: AppStrings.signIn,onPressed: ()async{
                    if(authCubit.signinFormKey.currentState!.validate()){
                      await authCubit.signInWithEmailAndPassword();
                    }
                }),
              ],
            ));
      },
    );
  }
}
