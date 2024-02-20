import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:dalel/features/home/presentation/widgets/period_details_section.dart';
import 'package:dalel/features/home/presentation/widgets/period_wars_section.dart';
import 'package:dalel/features/home/presentation/widgets/rccommendation_section.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsDetails extends StatelessWidget {
  HistoricalPeriodsModel model;
  HistoricalPeriodsDetails({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 28,),),
            const SliverToBoxAdapter(child: CustomHomeAppBar(),),
            const SliverToBoxAdapter(child: SizedBox(height: 32,),),
            const SliverToBoxAdapter(child: SizedBox(height: 7,),),
            SliverToBoxAdapter(child: PeriodDetailsSection(periodName: model.name,description: model.description,
            image: model.image,),),
            const SliverToBoxAdapter(child: SizedBox(height: 22,),),
            SliverToBoxAdapter(child: PeriodWarsSection(warsList: model.wars,),),
            const SliverToBoxAdapter(child: RecommendationSections(),)
          ],
        ),
      ),
    );
  }
}
