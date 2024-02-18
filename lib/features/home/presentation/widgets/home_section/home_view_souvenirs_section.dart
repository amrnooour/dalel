import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../custom_home_list_view.dart';

class HomeViewSouvenirsSection extends StatelessWidget {
  const HomeViewSouvenirsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16 ,),
        CustomHomeListView(),
      ],
    );
  }
}
