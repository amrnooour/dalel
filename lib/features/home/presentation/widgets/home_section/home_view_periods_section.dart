import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../hestorical_Periods.dart';

class HomeViewPeriodsSection extends StatelessWidget {
  const HomeViewPeriodsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalPeriods),
        SizedBox(height: 16 ,),
        HestoricalPeriods(),
        SizedBox(height: 32 ,),
      ],
    );
  }
}
