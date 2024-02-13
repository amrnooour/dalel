import 'package:dalel/features/sign_in/presentation/sign_in_view.dart';
import 'package:dalel/features/sign_up/presentation/sign_up.dart';
import 'package:dalel/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/on_boarding_view.dart';


final GoRouter router =GoRouter(routes: [
  GoRoute(path: "/",
  builder: (context,state) => const Splash(),
  ),
  GoRoute(path: "/onBoardingRoute",
    builder: (context,state) =>  OnBoarding(),
  ),
  GoRoute(path: "/signin",
  builder: (context,state) => const SignIn(),
  ),
  GoRoute(path: "/signup",
    builder: (context,state) => const SignUp(),
  ),
]);