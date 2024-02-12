import 'package:dalel/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/onboarding.dart';

final GoRouter router =GoRouter(routes: [
  GoRoute(path: "/",
  builder: (context,state) => const Splash(),
  ),
  GoRoute(path: "/onBoardingRoute",
    builder: (context,state) => const OnBoarding(),
  )
]);