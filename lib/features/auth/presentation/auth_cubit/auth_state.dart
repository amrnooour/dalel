class AuthState{}
final class AuthIntial extends AuthState{}
final class SignupLoadingState extends AuthState{}
final class SignupSuccessState extends AuthState{}
final class SignupFailureState extends AuthState{
  final String errorMessage;
  SignupFailureState(this.errorMessage);
}
final class TermsAndConditionUpdateState extends AuthState{}
final class PasswordVisibleOrNotVisibleState extends AuthState{}
final class SigninLoadingState extends AuthState{}
final class SigninSuccessState extends AuthState{}
final class SigninFailureState extends AuthState{
  final String errorMessage;
  SigninFailureState(this.errorMessage);
}





