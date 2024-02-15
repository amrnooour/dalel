import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/on_boarding/presentation/on_boarding_view.dart';


final GoRouter router =GoRouter(routes: [
  GoRoute(path: "/",
  builder: (context,state) => const Splash(),
  ),
  GoRoute(path: "/onBoardingRoute",
    builder: (context,state) =>  OnBoarding(),
  ),
  GoRoute(path: "/signin",
  builder: (context,state) => const SignInView(),
  ),
  GoRoute(path: "/signup",
    builder: (context,state) => const SignUpView(),
  ),
]);