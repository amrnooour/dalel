import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/home/data/models/historical_characters_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';


class CustomHomeItemListView extends StatelessWidget {
  HistoricalCharactersModel model;
  CustomHomeItemListView({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 74,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,boxShadow: [BoxShadow(offset: const Offset(0,7),blurRadius: 10,color: AppColors.grey)]),
      child: Column(children: [
        Container(
            height: 96,
            width: 74,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image:  DecorationImage(
              image: NetworkImage(model.image),fit: BoxFit.fill
            )),),
        const SizedBox(height: 11,),
        Text(model.name,style: CustomTextStyles.poppins500style14),
      ],),
    );
  }
}
