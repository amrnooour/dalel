import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthIntial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  bool termsAndConditionCheckBoxValue = false;
  bool isObscure = true;

  signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailureState("The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailureState("The account already exists for that email."));
      }
    } catch (e) {
      print(e.toString());
      emit(SignupFailureState(e.toString()));
    }
  }
  updateTermsAndConditionCheckBox({required newValue}){
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }
  isPasswordVisibleOrNotVisible(){
    if(isObscure == true){
      isObscure = false;
    }else{
      isObscure = true;
    }
    emit(PasswordVisibleOrNotVisibleState());
  }
}
