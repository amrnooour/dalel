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





