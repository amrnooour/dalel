import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/wars_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(InitialHomeState());
  List<HistoricalPeriodsModel> historicalPeriod = [];
  List<WarsModel> warsList = [];


  getHistoricalPeriod() async{
    try{
      emit(GetHistoricalPeriodLoading());
      await FirebaseFirestore.instance.collection(FireBaseStrings.historicalPeriod).get()
          .then((value) => value.docs.forEach((element) async{
           await FirebaseFirestore.instance.collection(FireBaseStrings.historicalPeriod).doc(element.id)
            .collection(FireBaseStrings.wars).get().then((value) => value.docs.forEach((element) {
              warsList.add(WarsModel.fromJson(element.data()));
            }));
        historicalPeriod.add(HistoricalPeriodsModel.fromJson(element.data(),warsList));
           emit(GetHistoricalPeriodSuccess());
      }));
    }catch(e){
      emit(GetHistoricalPeriodFailure(errorMessage: e.toString()));
    }

  }

}