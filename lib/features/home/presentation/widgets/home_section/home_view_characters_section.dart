import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../custom_home_list_view.dart';

class HomeViewCharactersSection extends StatelessWidget {
  const HomeViewCharactersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalCharacters),
        SizedBox(height: 16 ,),
        CustomHomeListView(),
        SizedBox(height: 32 ,),
      ],
    );
  }
}
