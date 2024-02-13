import 'package:dalel/features/on_boarding/presentation/functions/on_boarding_visited.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  int currentIndex;
  final PageController controller;
  GetButtons({Key? key, required this.controller,required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(currentIndex == onBoardingData.length-1){
      return Column(
        children: [
          CustomButton(text: AppStrings.createAccount,onPressed: (){
            onBoardingVisited();
            customReplacementNavigate(context, "/signup");
          },),
          const SizedBox(height: 16,),
          InkWell(
              onTap: (){
                onBoardingVisited();
                customReplacementNavigate(context, "/signin");
              },
              child: Text(AppStrings.loginNow,style: CustomTextStyles.poppins300style16.copyWith(
                  fontWeight: FontWeight.w400
              ),)),
        ],
      );
    } else{
      return CustomButton(text: AppStrings.next,onPressed: (){
        controller.nextPage(duration: const Duration(microseconds: 200),
          curve: Curves.bounceIn,);
      },);
    }
  }
}