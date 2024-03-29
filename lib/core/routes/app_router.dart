import 'package:dalel/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/forgot_password_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/view/historical_periods_details.dart';
import 'package:dalel/features/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:dalel/features/splash/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/on_boarding/presentation/on_boarding_view.dart';


final GoRouter router =GoRouter(routes: [
  GoRoute(path: "/",
  builder: (context,state) => const Splash(),
  ),
  GoRoute(path: "/onBoardingRoute",
    builder: (context,state) =>  OnBoarding(),
  ),
  GoRoute(path: "/signin",
  builder: (context,state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignInView()),
  ),
  GoRoute(path: "/signup",
    builder: (context,state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView()),
  ),
  GoRoute(path: "/forgotPassword",
    builder: (context,state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgotPasswordView()),
  ),
  GoRoute(path: "/homeNavBar",
    builder: (context,state) => const HomeNavBarWidget(),
  ),
  GoRoute(path: "/historicalPeriodsDetails",
      builder : (context,state) =>  HistoricalPeriodsDetails(model: state.extra as HistoricalPeriodsModel,)),
]);