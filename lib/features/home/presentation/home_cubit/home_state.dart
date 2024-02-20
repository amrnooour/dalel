class HomeState{}
class InitialHomeState extends HomeState{}
class GetHistoricalPeriodLoading extends HomeState{}
class GetHistoricalPeriodSuccess extends HomeState{}
class GetHistoricalPeriodFailure extends HomeState{
  GetHistoricalPeriodFailure({required this.errorMessage});
  String errorMessage;
}