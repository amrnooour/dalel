import 'package:flutter/material.dart';

import '../custom_home_app_bar.dart';

class HomeViewAppBarSection extends StatelessWidget {
  const HomeViewAppBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 28,),
        CustomHomeAppBar(),
        SizedBox(height: 32,)
      ],
    );
  }
}
