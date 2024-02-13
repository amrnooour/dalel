import 'package:dalel/core/database/cashe_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: "IsOnBoardingVisited")?? false;
    if(isOnBoardingVisited==true){
      delayedNavigate("/signin");
    }else{
      delayedNavigate("/onBoardingRoute");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.splash,fit: BoxFit.cover,);
  }
  void delayedNavigate(String path) {
    Future.delayed(const Duration(seconds: 2),(){
      customReplacementNavigate(context, path);
    });
  }
}

