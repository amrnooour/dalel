import 'package:dalel/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthIntial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();
  GlobalKey<FormState> restPasswordFormKey = GlobalKey();
  bool termsAndConditionCheckBoxValue = false;
  bool isObscure = true;

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      await verifyEmail();
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailureState("The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailureState("The account already exists for that email."));
      }else if (e.code == 'invalid-email') {
        emit(SignupFailureState("The email is invalid."));
      }else{
        emit(SignupFailureState(e.code));
      }
    } catch (e) {
      emit(SignupFailureState(e.toString()));
    }
  }
  void updateTermsAndConditionCheckBox({required newValue}){
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }
  void isPasswordVisibleOrNotVisible(){
    if(isObscure == true){
      isObscure = false;
    }else{
      isObscure = true;
    }
    emit(PasswordVisibleOrNotVisibleState());
  }
  Future<void> signInWithEmailAndPassword() async{
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
  Future<void> verifyEmail() async{
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
  Future<void> resetPasswordWithLink()async{
    try{
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    }catch(e){
      emit(ResetPasswordFailureState(e.toString()));
    }
  }
  Future<void> addUserProfile() async{
    CollectionReference users = FirebaseFirestore.instance.collection("users");
   await users.add({
      "first_name" : firstName,
      "last_name" : lastName ,
      "email_address" : emailAddress
    });
  }
}
