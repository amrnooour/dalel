import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_signip_form.dart';

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
            const SliverToBoxAdapter(child: CustomSignUpForm()),
            const SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: HaveAnAccount(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn,
              onTap: (){
              customNavigation(context, "/signin");
              },),),
            const SliverToBoxAdapter(child: SizedBox(height: 16,),),
          ],
        ),
      ),
    );
  }
}

