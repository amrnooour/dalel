import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forgot_password_form.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_sub_title.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 108,),),
          SliverToBoxAdapter(child: WelcomeTextWidget(text: AppStrings.forgotPassword,),),
          const SliverToBoxAdapter(child: SizedBox(height: 40,),),
          SliverToBoxAdapter(child: SizedBox(height: 235, width: 235,
                child: Image.asset(AppAssets.forgotPassword)),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24,),),
          const SliverToBoxAdapter(child: ForgotPasswordSubTitle(),),
          SliverToBoxAdapter(child: CustomForgotPasswordForm()),
        ],
      ),
    );
  }
}
