import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              CustomButton(text: AppStrings.next,),
              const SizedBox(height: 17,),
            ],
          ),
        ),
      ),
    );
  }
}

