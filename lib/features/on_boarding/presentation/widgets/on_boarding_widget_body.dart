import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/models/on_boarding_model.dart';
import 'custom_smooth_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  PageController controller;
  final Function(int)? onPageChanged;
  OnBoardingWidgetBody({Key? key,required this.controller,this.onPageChanged}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
        controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  width: 343,
                  height: 290,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(onBoardingData[index].imagePath),fit: BoxFit.fill)),
                ),
                const SizedBox(height: 24,),
                CustomSmoothIndicator(controller: controller),
                const SizedBox(height: 32,),
                Text(onBoardingData[index].title,style: CustomTextStyles.poppins500style24.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 16,),
                Text(onBoardingData[index].subTitle,style: CustomTextStyles.poppins300style16,textAlign: TextAlign.center,maxLines: 2,
                overflow: TextOverflow.ellipsis,),
              ],
            );
          })
    );
  }
}
