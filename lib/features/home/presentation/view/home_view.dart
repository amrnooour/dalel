import 'package:dalel/features/home/presentation/widgets/home_section/home_view_souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_section/home_view_periods_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_section/home_view_characters_section.dart';
import 'package:flutter/material.dart';
import '../widgets/home_section/home_view_app_bar_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HomeViewAppBarSection(),),
            SliverToBoxAdapter(child: HomeViewPeriodsSection(),),
            SliverToBoxAdapter(child: HomeViewCharactersSection(),),
            SliverToBoxAdapter(child: HomeViewSouvenirsSection(),),
          ],
        ),
      ),
    );
  }
}




