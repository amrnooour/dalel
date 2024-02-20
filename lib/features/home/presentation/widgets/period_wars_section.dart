import 'package:dalel/core/models/data_model.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/features/home/presentation/widgets/custom_data_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_header_text.dart';

class PeriodWarsSection extends StatelessWidget {
  final List<DataModel> warsList;
  PeriodWarsSection({Key? key,required this.warsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(text: AppStrings.wars),
        const SizedBox(height: 16 ,),
        Stack(
          clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -52,
                  right: 16,
                  child: SvgPicture.asset(AppAssets.cleopatraLogo)),
            CustomDataListView(dataList: warsList, routePath: "/warsDetailsView")
            ],),
        const SizedBox(height: 32 ,),
      ],
    );
  }
}
