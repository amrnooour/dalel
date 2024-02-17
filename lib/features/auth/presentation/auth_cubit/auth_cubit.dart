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
  GlobalKey<FormState> signinFormKey = GlobalKey();
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
  signInWithEmailAndPassword() async{
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!,
          password: password!
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SigninFailureState("No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(SigninFailureState("Wrong password provided for that user."));
      }else{
        emit(SigninFailureState("check your email or password"));
      }
    }catch(e){
      emit(SigninFailureState(e.toString()));
    }
  }
}
