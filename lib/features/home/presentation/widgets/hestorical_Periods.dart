import 'package:flutter/material.dart';

import 'hestorical_period_item.dart';

class HestoricalPeriods extends StatelessWidget {
  const HestoricalPeriods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HestoricalPeriodItem(),
        HestoricalPeriodItem()
      ],
    );
  }
}