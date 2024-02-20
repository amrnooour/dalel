import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomDataListViewItem extends StatelessWidget {
  DataModel model;
  String routePath;
  CustomDataListViewItem({Key? key,required this.model,required this.routePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigation(context,routePath,extra: model);
      },
      child: Container(
        width: 164,
        height: 96,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [BoxShadow(color: AppColors.grey,blurRadius: 10,offset: const Offset(0,7))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 16,),
            SizedBox(
              height: 48,
              width: 62,
              child: Text(model.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins500style18.copyWith(fontSize: 16,color: AppColors.deepBrown),
              ),
            ),
            SizedBox(
              height: 64,
              width: 47,
            child: CachedNetworkImage(
              imageUrl: model.image,
              placeholder: (context, url) => Shimmer.fromColors(baseColor: AppColors.grey,highlightColor: Colors.white,child:
              Container(height: 64,width: 47,color: AppColors.grey,),),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            ),
            const SizedBox(width: 16,),
          ],
        ),
      ),
    );
  }
}