import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/routes/app_router.dart';

class Dalel extends StatelessWidget {
  const Dalel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.offWhite
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}