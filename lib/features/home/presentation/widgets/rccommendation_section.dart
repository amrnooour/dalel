import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_header_text.dart';
import 'custom_home_list_view.dart';

class RecommendationSections extends StatelessWidget {
  const RecommendationSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.recommendations),
        SizedBox(height: 16 ,),
        CustomHomeListView(),
        SizedBox(height: 32 ,),
      ],
    );
  }
}
