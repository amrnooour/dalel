import '../../../../core/database/cashe_helper.dart';
import '../../../../core/services/service_locator.dart';

void onBoardingVisited(){
  getIt<CacheHelper>().saveData(key: "IsOnBoardingVisited", value: true);
}