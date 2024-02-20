import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/widgets/custom_shimmer_category.dart';
import 'package:dalel/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:dalel/features/home/presentation/home_cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_data_list_view.dart';
import 'custom_data_list_view_item.dart';

class HestoricalPeriods extends StatelessWidget {
  const HestoricalPeriods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(
      listener: (context, state) {
        if(state is GetHistoricalPeriodFailure){
          customToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        return state is GetHistoricalPeriodLoading ?CustomShimmerCategory(height: 96,width: 164,) :
        CustomDataListView(dataList: context.read<HomeCubit>().historicalPeriod,
        routePath: "/historicalPeriodsDetails",);
      },
    );
  }
}

