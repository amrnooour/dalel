import 'package:dalel/core/utils/app_strings.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingModel{
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({required this.imagePath,required this.title,required this.subTitle});
}

List<OnBoardingModel> onBoardingData =[
  OnBoardingModel(
      imagePath: AppAssets.onBoarding1,
      title: AppStrings.explore,
      subTitle: AppStrings.using),
  OnBoardingModel(
      imagePath: AppAssets.onBoarding2,
      title: AppStrings.from,
      subTitle: AppStrings.abig),
  OnBoardingModel(
      imagePath: AppAssets.onBoarding3,
      title: AppStrings.modern,
      subTitle: AppStrings.all),
];