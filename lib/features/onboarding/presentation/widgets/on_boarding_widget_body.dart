import 'package:dalel/features/onboarding/presentation/widgets/custom_smooth_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({Key? key}) : super(key: key);
  PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
          itemCount: 3,
          itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(AppAssets.onBoarding1),
                const SizedBox(height: 24,),
                CustomSmoothIndicator(controller: _controller),
                const SizedBox(height: 32,),
                Text(AppStrings.explore,style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                const SizedBox(height: 16,),
                const Text(AppStrings.using,style: CustomTextStyles.poppins300style16,textAlign: TextAlign.center,),
              ],
            );
          })
    );
  }
}
