import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/on_boarding/presentation/functions/on_boarding_visited.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/get_buttons.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';
import '../../../core/database/cashe_helper.dart';
import 'widgets/custom_nav_bar.dart';


class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController(initialPage: 0);
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40,),
              CustomNavBar(onTap: (){
                onBoardingVisited();
                customReplacementNavigate(context, "/signin");
              },),
              OnBoardingWidgetBody(controller: _controller,onPageChanged: (index){
                currentIndex =index;
                setState(() {
                });
              },),
              const SizedBox(height: 120,),
              GetButtons(controller: _controller, currentIndex: currentIndex),
              const SizedBox(height: 17,),
            ],
          ),
        ),
      ),
    );
  }
}



