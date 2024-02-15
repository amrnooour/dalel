import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account.dart';
import 'package:dalel/features/auth/presentation/widgets/tems_and_conditions.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152,),),
            SliverToBoxAdapter(child: WelcomeTextWidget(text: AppStrings.welcome,),),
            const SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.fristName,)),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.lastName,)),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.emailAddress,)),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.password,obscureText: true,)),
            const SliverToBoxAdapter(child: TermsAndConditions(),),
            const SliverToBoxAdapter(child: SizedBox(height: 88,),),
            SliverToBoxAdapter(child: CustomButton(text: AppStrings.signUp,onPressed: (){},),),
            const SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: HaveAnAccount(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn,),)
          ],
        ),
      ),
    );
  }
}